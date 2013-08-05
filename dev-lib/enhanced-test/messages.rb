#!/usr/bin/ruby
# encoding: utf-8

# just simple constants that are used to facilliate
# communication between the actual process performing
# the tests, and the test manager process

module ANTLR3
module Test
module Messages
  PASSED          = ?+
  PENDING         = ?-
  FAILED          = ?!
  GRAMMAR_COMPILE = ?.
  SECTION         = ?%
  DIVIDER         = "\n#{ SECTION.chr * 2 }\n".freeze
  
  
  GRAMMAR_WEIGHT = 5
  PROFILE_WEIGHT = 3
  EXAMPLE_WEIGHT = 1
end
end
end
