#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
members = CommonToken.members + [ :pred, :succ ]
ChainedToken = Struct.new( *members )

class ChainedToken
  include Token
  
  def self.from_token( general_token, prev = nil )
    new( token.type, token.channel,
        token.text ? token.text.clone : nil,
        token.input, token.start, token.stop,
        -1, token.line, token.column, prev )
  end
  
  def self.create_eof( tail_token, channel )
    tail_token.connect_to( new( EOF, channel ) )
  end
  
  def initialize( type = nil, channel = DEFAULT_CHANNEL, text = nil,
                 input = nil, start = nil, stop = nil, index = 0,
                 line = 0, column = -1, pred = nil, succ = nil )
    super
    block_given? and yield( self )
    self.text.nil? && self.start && self.stop and
      self.text = self.input.substring( self.start, self.stop )
  end
  
  def walk
    block_given? or return enum_for( __method__ )
    ptr = self
    begin
      yield( ptr )
      ptr = succ
    end while ptr
  end
  
  def walk_backward
    block_given? or return enum_for( __method__ )
    ptr = self
    begin
      yield( ptr )
      ptr = pred
    end while ptr
  end
  
  def eof?
    type == EOF
  end
  
  def <<( general_token )
    t = self.class.from_token( general_token, self )
    t.index = index + 1
    self.succ = t
  end
  
  def connect_to( token )
    token.prev = self
    token.index = index + 1
    self.succ = token
  end
  
  def delete
    a, b = self.pred, self.succ
    self.succ = self.pred = nil
    a.succ = b if a
    b.prev = a if b
    return b
  end
  
  def head?
    pred.nil?
  end
  
  def tail?
    succ.nil?
  end
  
  alias :prev :pred
  alias :next :succ
  protected :pred=, :succ=
end

class ChainedTokenStream
  include TokenStream
  attr_reader :head, :tail
  
  def initialize( token_source, options = {}, &filter )
    @token_source = token_source
    @last_marker = nil
    @channel = options.fetch( :channel, DEFAULT_CHANNEL )
    @source_name = options.fetch( :source_name ) {  @token_source.source_name rescue nil }
    @cursor = @tail = @head = nil
  end
  
  def peek( k = 1 )
    return( ( t = look( k ) ) ? t.type : EOF )
  end
  
  def look( k = 1 )
    @head or first_harvest
    case
    when k == 1 then @cursor
    when k > 1 then walk_foward( k - 1 )
    when k < 0 then walk_backward( -k )
    when k == 0 then nil
    end
  end
  
  def consume
    @head or first_harvest
    @cursor.eof? and return( nil )
    prev, @cursor = @cursor, look( 2 )
    return( prev )
  end
  
  def reset
    @cursor = @head or return( self )
    while @cursor and @cursor.channel != @channel
      @cursor = @cursor.next || fetch
    end
    @last_marker = nil
    return self
  end
  
  def mark
    @last_marker = @cursor
  end
  
  
private
  
  # the first call to a method like look or peek or consume
  # requires initializing the token pointers
  def first_harvest
    @head.nil? or return( nil )
    @tail = @head = @filter ? @token_source.find( &@filter ) : @token_source.next
    @cursor = @head or return( nil )
    while @cursor and @cursor.channel != @channel
      @cursor = fetch
    end
  rescue StopIteration
  end
  
  def walk_foward( steps )
    cursor = @cursor
    steps.times do
      begin
        n = cursor.next || fetch or return( nil )
      end until n.channel == @channel
      cursor = n
    end
    return cursor
  end
  
  def walk_backward( steps )
    count = 0
    @cursor.walk_backward.find do |t|
      t.channel == @channel and ( count += 1 ) == steps
    end
  end
  
  def harvest
    begin     token = fetch or return( nil )
    end until token.channel == @channel
  end
  
  def fetch
    @tail <<= @token_source.next
  end
end

end

__END__
	/**
	 * Reverses the stream 'count' tokens back, causing the tokens to be
	 * removed from the stream.  Can be used to erase tokens which parser
	 * lookahead has summoned, but which represent input to be handled by
	 * an 'island grammar'.
	 */
	public void scrub(int count) {
		if (p == null) {
			p = tail;
		}
		for (; count > 0 ; count--) {
			p = p.getPrev();
		}
		p.setNext(null);
		tail = p;
		p = null;
	}
	/** Reset this token stream by setting its token source. */
	public void setTokenSource(TokenSource tokenSource) {
		this.tokenSource = tokenSource;
		p = null;
		channel = Token.DEFAULT_CHANNEL;
	}

	private LinkedListToken readNextToken() {
		LinkedListToken t = (LinkedListToken)tokenSource.nextToken();
		while ( t!=null && t.getType()!=CharStream.EOF ) {
			boolean discard = false;
			if ( discardOffChannelTokens && t.getChannel()!=this.channel ) {
				discard = true;
			}
			if ( !discard )	{
				if (head == null && tail == null) {
					head = tail = t;
				} else {
					tail.setNext(t);
					t.setPrev(tail);
					tail = t;
				}
				break;
			}
			t = (LinkedListToken)tokenSource.nextToken();
		}
		if (t.getType() == CharStream.EOF) {
			// prevent ourselves from producing lots of EOF tokens
			// if the parser is 'pushy'; also, do the head/tail dance
			if (tail!=null && tail.getType()==CharStream.EOF) {
				return tail;
			} else {
				if (head == null && tail == null) {
					head = tail = t;
				} else {
					tail.setNext(t);
					t.setPrev(tail);
					tail = t;
				}
			}
		}
		return skipOffTokenChannels(t);
	}
	
	/**
	 * Returns the token that follows the given token in the stream, or
	 * null if there's no token following
	 */
	private LinkedListToken succ(LinkedListToken tok) {
		LinkedListToken next = tok.getNext();
		if (next == null) {
			next = readNextToken();
		}
		return next;
	}


	/** Return absolute token i; ignore which channel the tokens are on;
	 *  that is, count all tokens not just on-channel tokens.
	 */
	public Token get(int i) {
		LinkedListToken tok = head;
		for (int c=0; c<i; c++) {
			tok = succ(tok);
		}
		return tok;
	}

	public TokenSource getTokenSource() {
		return tokenSource;
	}

	public Token LT(int k) {
		if (p == null) {
			p = readNextToken();
		}
		if (k == 0) {
			return null;
		}
		if (k < 0) {
			return LB(-k);
		}
		LinkedListToken i = p;
		int n = 1;
		// find k good tokens
		while (n < k) {
			LinkedListToken next = succ(i);
			if (i == null) {
				return Token.EOF_TOKEN;
			}
			// skip off-channel tokens
			i = skipOffTokenChannels(next); // leave p on valid token
			n++;
		}
		if (i == null) {
			return Token.EOF_TOKEN;
		}
		return i;
	}

	/** Look backwards k tokens on-channel tokens */
	protected Token LB(int k) {
		if (p == null) {
			p = readNextToken();
		}
		if (k == 0) {
			return null;
		}

		LinkedListToken i = p;
		int n = 1;
		// find k good tokens looking backwards
		while (n <= k) {
			LinkedListToken next = i.getPrev();
			if (next == null) {
				return null;
			}
			// skip off-channel tokens
			i = skipOffTokenChannelsReverse(next); // leave p on valid token
			n++;
		}
		return i;
	}


	public String toString(int start, int stop) {
		LinkedListToken tok = head;
		int i = 0;
		for (; i<start && tok!=null; i++) {
			tok = succ(tok);
		}
 		StringBuffer buf = new StringBuffer();
		for (; i<=stop && tok!=null; i++) {
			buf.append(tok.getText());
			tok = succ(tok);
		}
 		return buf.toString();
	}

	public String toString(Token start, Token stop) {
		LinkedListToken tok = (LinkedListToken)start;
 		StringBuffer buf = new StringBuffer();
		do {
			buf.append(tok.getText());
			tok = succ(tok);
		} while (tok!=null && tok!=stop);
 		return buf.toString();
	}

	public void consume() {
		do {
			p = p.getNext();
		} while (p != null && p.getChannel() != channel);
	}

	public int index() {
		int i=0;
		for (LinkedListToken tok=head; tok!=p&&tok!=null; tok=tok.getNext()) {
			i++;
		}
		return i;
	}

	public int LA(int i) {
	        return LT(i).getType();
	}

	public int mark() {
		// TODO: could store marks in a hash; does it make any difference?
		lastMarker = (LinkedListToken)LT(1);
		return index();
	}

	public void release(int marker) {
		// no resources to release
	}

	public void rewind() {
		p = lastMarker;
	}

	public void rewind(int marker) {
		seek(marker);
	}

	public void seek(int index) {
		p = head;
		for (int i=0; i<index; i++) {
			p = succ(p);
		}
	}

	public int size() {
		int s = 0;
		for (LinkedListToken tok=head; tok!=null; tok=tok.getNext()) {
			s++;
		}
		return s;
	}


	public void discardOffChannelTokens(boolean discardOffChannelTokens) {
		this.discardOffChannelTokens = discardOffChannelTokens;
	}

	/**
	 * Given a starting token, return the first on-channel token.
	 */
	protected LinkedListToken skipOffTokenChannels(LinkedListToken i) {
		while (i != null && i.getChannel() != channel) {
			i = succ(i);
		}
		return i;
	}

	protected LinkedListToken skipOffTokenChannelsReverse(LinkedListToken i) {
		while (i != null && i.getChannel() != channel) {
			i = i.getPrev();
		}
		return i;
	}
}
