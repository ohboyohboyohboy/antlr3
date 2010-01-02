@cyclicDFA.errorMethod() ::= <<
def error(nvae)
  @recognizer.debug_listener.recognition_exception(nvae)
  super
end
>>