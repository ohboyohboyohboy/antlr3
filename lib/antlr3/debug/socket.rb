#!/usr/bin/ruby
# encoding: utf-8

require 'socket'

module ANTLR3
module Debug
DEFAULT_PORT = 49100

=begin rdoc ANTLR3::Debug::EventSocketProxy

A proxy debug event listener that forwards events over a socket to
a debugger (or any other listener) using a simple text-based protocol;
one event per line.  ANTLRWorks listens on server socket with a
RemoteDebugEventSocketListener instance.  These two objects must therefore
be kept in sync.  New events must be handled on both sides of socket.

=end
class EventSocketProxy
  include EventListener
  
  def initialize(recognizer, options = {})
    super()
    @grammar_file_name = recognizer.grammar_file_name
    @adaptor = options[:adaptor]
    @port = options[:port] || DEFAULT_PORT
    @log_socket = options[:log]
    @socket = nil
    @connection = nil
  end
  
  def log(message, *interpolation_arguments)
    @log_socket and @log_socket.printf(message, *interpolation_arguments)
  end
  
  SOCKET_ADDR_PACK = 'snCCCCa8'.freeze
  
  def handshake
    unless @socket
      begin
        @socket = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM, 0)
        @socket.setsockopt( Socket::SOL_SOCKET, Socket::SO_REUSEADDR, 1 )
        @socket.bind(Socket.pack_sockaddr_in( @port, '' ))
        @socket.listen(1)
        log("waiting for incoming connection on port %i\n", @port)
        
        @connection, addr = @socket.accept
        port, host = Socket.unpack_sockaddr_in(addr)
        log("Accepted connection from %s:%s\n", host, port)
        
        @connection.setsockopt(Socket::SOL_TCP, Socket::TCP_NODELAY, 1)
        
        write('ANTLR %s', PROTOCOL_VERSION)
        write('grammar %p', @grammar_file_name)
        ack
      rescue IOError => error
        log("handshake failed due to an IOError:\n")
        log("  %s: %s", error.class, error.message)
        log("  Backtrace: ")
        log("  - %s", error.backtrace.join("\n  - "))
        @connection and @connection.close
        @socket and @socket.close
        @socket = nil
        raise
      end
    end
    return self
  end
  
  def write(message, *interpolation_arguments)
    message << ?\n
    log("---> #{message}", *interpolation_arguments)
    @connection.printf(message, *interpolation_arguments)
    @connection.flush
  end
  
  def ack
    line = @connection.readline
    log("<--- %s", line)
  end
  
  def transmit(event, *interpolation_arguments)
    write(event, *interpolation_arguments)
    ack()
  end
  
  def commence
    # don't bother sending event; listener will trigger upon connection
  end
  
  def terminate
    transmit 'terminate'
    @connection.close
    @socket.close
  end
  
  def enter_rule( grammar_file_name, rule_name )
    transmit "%s\t%s\t%s", __method__, grammar_file_name, rule_name
  end
  
  def enter_alternative( alt )
    transmit "%s\t%s", __method__, alt
  end
  
  def exit_rule( grammar_file_name, rule_name )
    transmit "%s\t%s\t%s", __method__, grammar_file_name, rule_name
  end
  
  def enter_subrule( decision_number )
    transmit "%s\t%i", __method__, decision_number
  end
  
  def exit_subrule( decision_number )
    transmit "%s\t%i", __method__, decision_number
  end
  
  def enter_decision( decision_number )
    transmit "%s\t%i", __method__, decision_number
  end
  
  def exit_decision( decision_number )
    transmit "%s\t%i", __method__, decision_number
  end
  
  def consume_token( token )
    transmit "%s\t%s", __method__, serialize_token( token )
  end
  
  def consume_hidden_token( token )
    transmit "%s\t%s", __method__, serialize_token( token )
  end
  
  def look(i, item)
    case item
    when AST::Tree
      FIXME(34)
    when nil
    else
      transmit "%s\t%i\t%s", __method__, i, serialize_token(item)
    end
  end
  
  def mark(i)
    transmit "%s\t%i", __method__, i
  end
  
  def rewind(i = nil)
    i ? transmit( "%s\t%i", __method__, i ) : transmit( '%s', __method__ )
  end
  
  def begin_backtrack( level )
    transmit "%s\t%i", __method__, level
  end
  def end_backtrack( level, successful )
    transmit "%s\t%i\t%p", __method__, level, (successful ? true : false)
  end
  
  def location( line, position )
    transmit "%s\t%i\t%i", __method__, line, position
  end
  
  def recognition_exception( exception )
    transmit "%s\t%p\t%i\t%i\t%i", __method__, exception.class,
      exception.index, exception.line, exception.column
  end
  
  def begin_resync
    transmit '%s', __method__
  end
  
  def end_resync
    transmit '%s', __method__
  end
  
  def semantic_predicate( result, predicate )
    pure_boolean = !(!result)
    transmit "%s\t%s\t%s", __method__, pure_boolean, escape_newlines( predicate )
  end
  
  def consume_node( tree )
    FIXME(31)
  end
  
  def look_tree( i, t )
    FIXME(34)
  end
  
  def serialize_node( buffer, tree )
    FIXME(33)
  end
  
  def flat_node( tree )
    transmit "%s\t%i", __method__, @adaptor.unique_id( tree )
  end
  
  def error_node( tree )
    transmit "%s\t%i\t%i\t%p", __method__, @adaptor.unique_id( tree ),
            Token::INVALID_TOKEN_TYPE, escape_newlines( tree.to_s )
  end
  
  def create_node( node, token = nil )
    if token
      transmit "%s\t%i\t%i", __method__, @adaptor.unique_id( node ),
              token.token_index
    else
      transmit "%s\t%i\t%i\t%p", __method__, @adaptor.unique_id( node ),
          @adaptor.type_of( node ), @adaptor.text_of( node )
    end
  end
  
  def become_root( new_root, old_root )
    transmit "%s\t%i\t%i", __method__, @adaptor.unique_id( new_root ),
              @adaptor.unique_id( old_root )
  end
  
  def add_child( root, child )
    transmit "%s\t%i\t%i", __method__, @adaptor.unique_id( root ),
             @adaptor.unique_id( child )
  end
  
  def set_token_boundaries( t, token_start_index, token_stop_index )
    transmit "%s\t%i\t%i\t%i", __method__, @adaptor.unique_id( t ),
                               token_start_index, token_stop_index
  end
  
  attr_accessor :adaptor
  
  def serialize_token( token )
    [token.token_index, token.type, token.channel,
     token.line, token.column,
     escape_newlines( token.text )].join( "\t" )
  end
  
  def escape_newlines( text )
    text.inspect.tap do |t|
      t.gsub!(/%/, '%%')
    end
  end
  
  private
  def FIXME(number)
    file, line, method = call_stack.first.to_a
    raise NotImplementedError, Util.tidy(<<-END)
    | FIXME(#{number})
    | a portion of #{self.class.name}##{method} is pending implementation
    |   file ``#{file}'' line #{line}
    END
  end
end

=begin rdoc ANTLR3::Debug::RemoteEventSocketListener

A debugging event listener which intercepts debug event messages sent by a EventSocketProxy
over an IP socket.

=end
class RemoteEventSocketListener < ::Thread
  attr_accessor :listener
  attr_reader :host, :port
  
  def initialize(listener, host, port)
    @listener = listener
    @host = host
    @port = port
    super do
      sleep
      TCPSocket.open(@host, @port) do |socket|
        @socket = socket
        handshake
      end
    end
  end
  
  def handshake
    @version = @socket.readline.split("\t")[-1]
    @grammar_file = @socket.readline.split("\t")[-1]
    ack
    @listener.commence
  end
  
  def ack
    @socket.puts("ack")
    @socket.flush
  end
  
  def open_connection
    @socket = TCPSocket.open(@host, @port)
  end
  
  def unpack_event(event)
    event.nil? and return(nil)
    name, *elements = event.split("\t",-1)
    name = name.to_sym
    elements.map! do |elem|
      elem.empty? and next(nil)
      case elem
      when /^\d+$/ then Integer(elem)
      when /^\d+\.\d+$/ then Float(elem)
      when /^true$/ then true
      when /^false$/ then false
      when /^".*"$/ then 
      end
    end
  end
  
  def dispatch(event)
    name, *params = event.split("\t",-1)
  end
  
end
end # module Debug
end # module ANTLR3
