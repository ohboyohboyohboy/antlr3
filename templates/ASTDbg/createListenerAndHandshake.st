

createListenerAndHandshake() ::= <<
options[:debug_listener] ||= begin
  port = options[:port]
  log  = options[:log]
  proxy = ANTLR3::Debug::EventSocketProxy.new(
    self, :adaptor => adaptor,
    :log => log, :port => port
  )
  proxy.handshake
  proxy
end
>>