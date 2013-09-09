#!/usr/bin/ruby
# encoding: ascii
#
# author: Kyle Yetter
#


module Inflection
  LIBRARY_PATH = File.join( File.dirname(__FILE__), 'inflection' )
  
  extend( self )
  
  @@inflections = {}
  @@formats = {}
  
  def self.inflections
    @@inflections.keys
  end
  
  def self.inflection( inflection_name, *aliases, &block )
    names = [inflection_name, *aliases]
    if block_given?
      names.each { |name| @@inflections[name.to_s] = block }
    else
      self.respond_to?(inflection_name) or
        raise ArgumentError, "you must supply a block"
      method = self.method(inflection_name)
      names.each { |name| @@inflections[name.to_s] = method }
    end
    define_method( inflection_name ) do
      inflect( inflection_name )
    end
  end
  
  def self.format_test(test_name, *names, &block)
    if block_given?
      [test_name, *names].each { |name| @@formats[name.to_s] = block }
    else
      self.respond_to?(test_name) or
        raise ArgumentError, "you must supply a block"
      method = self.method(test_name)
      names.each { |name| @@formats[name.to_s] = method }
    end
  end
  
  ################################################################################
  # Everything below has been clipped out of the Rails (ActiveSupport) library   #
  # and altered to deal exclusively with pluralization                           #
  ################################################################################
  module Pluralization
    extend(self)
    class PluralizationRules
      def self.instance
        defined?(@instance) or @instance = new()
        return(@instance)
      end
      private_class_method :new
      
      attr_reader :plurals, :singulars, :uncountables, :humans
      
      def initialize
        @plurals, @singulars, @uncountables = [], [], []
      end
      
      # Specifies a new pluralization rule and its replacement. The rule can either be a string or a regular expression.
      # The replacement should always be a string that may include references to the matched data from the rule.
      def plural(rule, replacement)
        @uncountables.delete(rule) if rule.is_a?(String)
        @uncountables.delete(replacement)
        @plurals.insert(0, [rule, replacement])
      end
    
      # Specifies a new singularization rule and its replacement. The rule can either be a string or a regular expression.
      # The replacement should always be a string that may include references to the matched data from the rule.
      def singular(rule, replacement)
        @uncountables.delete(rule) if rule.is_a?(String)
        @uncountables.delete(replacement)
        @singulars.insert(0, [rule, replacement])
      end
    
      # Specifies a new irregular that applies to both pluralization and singularization at the same time. This can only be used
      # for strings, not regular expressions. You simply pass the irregular in singular and plural form.
      #
      # Examples:
      #   irregular 'octopus', 'octopi'
      #   irregular 'person', 'people'
      def irregular(singular, plural)
        @uncountables.delete(singular)
        @uncountables.delete(plural)
        if singular[0,1].upcase == plural[0,1].upcase
          plural(Regexp.new("(#{singular[0,1]})#{singular[1..-1]}$", "i"), '\1' + plural[1..-1])
          singular(Regexp.new("(#{plural[0,1]})#{plural[1..-1]}$", "i"), '\1' + singular[1..-1])
        else
          plural(Regexp.new("#{singular[0,1].upcase}(?i)#{singular[1..-1]}$"), plural[0,1].upcase + plural[1..-1])
          plural(Regexp.new("#{singular[0,1].downcase}(?i)#{singular[1..-1]}$"), plural[0,1].downcase + plural[1..-1])
          singular(Regexp.new("#{plural[0,1].upcase}(?i)#{plural[1..-1]}$"), singular[0,1].upcase + singular[1..-1])
          singular(Regexp.new("#{plural[0,1].downcase}(?i)#{plural[1..-1]}$"), singular[0,1].downcase + singular[1..-1])
        end
      end
    
      # Add uncountable words that shouldn't be attempted inflected.
      #
      # Examples:
      #   uncountable "money"
      #   uncountable "money", "information"
      #   uncountable %w( money information rice )
      def uncountable(*words)
        (@uncountables << words).flatten!
      end
    
    
      # Clears the loaded inflections within a given scope (default is <tt>:all</tt>).
      # Give the scope as a symbol of the inflection type, the options are: <tt>:plurals</tt>,
      # <tt>:singulars</tt>, <tt>:uncountables</tt>, <tt>:humans</tt>.
      #
      # Examples:
      #   clear :all
      #   clear :plurals
      def clear(scope = :all)
        case scope
        when :all
          [@plurals, @singulars, @uncountables].each { |v| v.clear }
        else
          var = :"@#{scope}"
          defined?(var) and instance_variable_get(var).clear
        end
      end
    end
  
    
    def pluralization_rules
      if block_given?
        yield PluralizationRules.instance
      else
        PluralizationRules.instance
      end
    end
    
    def pluralize(word)
      result = word.to_s.dup
    
      if word.empty? || pluralization_rules.uncountables.include?(result.downcase)
        result
      else
        pluralization_rules.plurals.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
        result
      end
    end
    
    def singularize(word)
      result = word.to_s.dup
      
      if pluralization_rules.uncountables.include?(result.downcase)
        result
      else
        pluralization_rules.singulars.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
        result
      end
    end
    
    def singular?(word)
      uncountable?(word) or singularize(word) == word.to_s
    end
    
    def plural?(word)
      uncountable?(word) or not singular?(word)
    end
    
    def uncountable?(word)
      pluralization_rules.uncountables.include?(word.to_s.downcase)
    end
    
    private :pluralization_rules
    
    class << self; alias rules pluralization_rules; end
  end
  ################################################################################
  # ^- End of code originating from the ActiveSupport library                    #
  ################################################################################

  module RegularExpressions
    ID_LEAD_CHARACTER   = /[a-z_\x80-\xff]/
    ID_CHARACTER        = /[\w\x80-\xff]/
    GENERAL_IDENTIFIER  = /^[\w\x80-\xff]+$/
    LOCAL_VARIABLE      = /^[a-z_\x80-\xff][\w\x80-\xff]*$/
    INSTANCE_VARIABLE   = /^@([\w\x80-\xff]+)$/
    CLASS_VARIABLE      = /^@@[\w\x80-\xff]+$/
    GLOBAL_VARIABLE     = /^\$[\w\x80-\xff]+$/
    DEFINABLE_OPERATOR = 
      /^ < (?: = >? | < )?
      | = (?: ~ | = =? )
      | > [ = > ]?
      | \[ \] =?
      | \*{1,2}
      | \- @?
      | \+ @?
      | [ \/ & % \^ ~ \| ] $/x  
    CONSTANT            = /^[A-Z][\w\x80-\xff]*$/
    MODULE_NAME         = /^[A-Z][a-zA-Z\d\x80-\xff]*$/  # conventionally, no underscores (camel case)
    CONSTANT_VALUE_NAME = /^[A-Z][A-Z_\d]*$/             # conventionally, all capitals and underscores
    CONSTANT_PATH       = /^(?:::)?(?:[A-Z][\w\x80-\xff]*::)*[A-Z][\w\x80-\xff]*$/
    METHOD_NAME         = /^[\w\x80-\xff]+[=!\?]?$/
    METHOD_IDENTIFIER   = Regexp.union(METHOD_NAME, DEFINABLE_OPERATOR)
    CAMEL_CASE          = /^(?:[A-Z]+|[A-Z][a-z_\d\x80-\xff]*)+$/
    SNAKE_CASE          = /^#{ID_LEAD_CHARACTER}[a-z_\d\x80-\xff]+$/
    UNDERLINED          = /^(_+)([\w\x80-\xff]+)\1$/
    
  end
  
  module CodeWords
    
    module Mangle
      
      include RegularExpressions
      extend(self)
      
      def snake_case(string)
        string.to_s.gsub(/::/,'/').tap do |str|
          str.gsub!(/([A-Z]+)([A-Z][a-z\x80-\xff])/,'\1_\2')
          str.gsub!(/([a-z\x80-\xff])([A-Z])/,'\1_\2')
          str.tr!('-','_')
          str.downcase!
        end
      end
      
      def chain_case(string)
        snake_case(string).tap { |str| str.tr!('_','-') }
      end
      
      def camel_case(string, full = true)
        string.to_s.gsub(/(\A|[_\/\-])([a-z\x80-\xff])/) do
          ($1 == '/' ? '::' : '') << $2.upcase
        end.tap { |str| full or str[0..0] = str[0..0].downcase }
      end
      
      def underline(string, amount = 2)
        uline = '_' * amount
        uline << string.to_s << uline
      end
      
      def title_case( string )
        camel_case( string ).gsub(/::/,'/').tap do |str|
          str.gsub!( /([A-Z]+)([A-Z][a-z\x80-\xff])/, '\1 \2' )
          str.gsub!( /([a-z\x80-\xff])([A-Z])/, '\1 \2' )
          str.tr!( '-', ' ' )
        end
      end
      
      alias title title_case
      
      def strip_underline(string)
        string.to_s =~ UNDERLINED ? $2 : string
      end
      
      def strip_underscores(string)
        string.to_s.gsub(/^_+/,'').tap do |str|
          str.gsub!(/_+$/,'')
        end
      end
      
      def instance_variable(string)
        if string.to_s =~ /[\w\x80-\xff]+/
          '@' << $&
        end
      end
      
      def global_variable(string)
        if string.to_s =~ /[\w\x80-\xff]+/
          '$' << $&
        end
      end
      
      def class_variable(string)
        if string.to_s =~ /[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          '@@' << $&
        end
      end
      
      alias module_variable class_variable
      
      def local_variable(string)
        if string.to_s =~ /[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          snake_case($&)
        end
      end
      
      def constant_value_name(string)
        if string.to_s =~ /[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          snake_case($&).tap { |str| str.upcase! }
        end
      end
      
      def constant_value_path(string)
        if string.to_s =~ /(?:[a-zA-Z_\x80-\xff][\w\x80-\xff]*(?:::|\/)?)[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          snake = snake_case($&)
          constant, *mods = snake.split('/').reverse!
          constant.upcase!
          mods.map! { |mod| camel_case(mod) }
          [constant, *mods].reverse!.join('::')
        end
      end
      
      def module_name(string)
        if string =~ /[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          camel_case(string)
        end
      end
      
      def module_path(string)
        if string.to_s =~ /(?:[a-zA-Z_\x80-\xff][\w\x80-\xff]*(?:::|\/)?)[a-zA-Z_\x80-\xff][\w\x80-\xff]*/
          camel_case($&)
        end
      end
      
    end # Mangle
    
    module Format
      include RegularExpressions
      extend(self)
      
      def identifier?(string)
        test_format(string, GENERAL_IDENTIFIER)
      end
      
      def local_variable?(string)
        test_format(string, LOCAL_VARIABLE)
      end
      
      def global_variable?(string)
        test_format(string, GLOBAL_VARIABLE)
      end
      
      def instance_variable?(string)
        test_format(string, INSTANCE_VARIABLE)
      end
      
      def class_variable?(string)
        test_format(string, CLASS_VARIABLE)
      end
      
      def definable_operator?(string)
        test_format(string, DEFINABLE_OPERATOR)
      end
      
      def method_identifier?(string)
        test_format(string, METHOD_IDENTIFIER)
      end
      
      def underlined?(string)
        test_format(string, UNDERLINED)
      end
      
      def constant_name?(string)
        test_format(string, CONSTANT)
      end
      
      def module_name?(string)
        test_format(string, MODULE_NAME)
      end
      
      def constant_value_name?(string)
        test_format(string, CONSTANT_VALUE_NAME)
      end
      
      def constant_path?(string)
        test_format(string, CONSTANT_PATH)
      end
      
      private
      def test_format(obj, regexp)
        # the sort-of-screwy double negative ensures a purely boolean result
        not obj.to_s !~ regexp
      end
    
    end # Format


    
    [ Mangle, Format ].each do |mod|
      include(mod)
      extend(mod)
    end
  end
 
  [Pluralization, CodeWords].each do |mod|
    extend(mod)
  end
  
  def inflect(*inflection_names)
    inflection_names.inject(self.to_s) do |result, name|
      inflected = (inflection =
        @@inflections[name.to_s.downcase]) ? inflection.call(result) : result
      inflected or result
    end
  end
  
  def looks_like?(*format_names)
    format_names.each do |name|
      check = @@formats[name.to_s].call(self) rescue false
      return(false) unless check
    end
    return true
  end
  
end

module Inflection::Pluralization
  # set up the general pluralization rules
  rules.plural(/$/, 's')
  rules.plural(/s$/i, 's')
  rules.plural(/(ax|test)is$/i, '\1es')
  rules.plural(/(octop|radi|alumn|syllab)us$/i, '\1i')
  rules.plural(/(alias|status|virus)$/i, '\1es')
  rules.plural(/(bu)s$/i, '\1ses')
  rules.plural(/(buffal|tomat)o$/i, '\1oes')
  rules.plural(/([ti])um$/i, '\1a')
  rules.plural(/sis$/i, 'ses')
  rules.plural(/(?:([^f])fe|([lr])f)$/i, '\1\2ves')
  rules.plural(/(hive)$/i, '\1s')
  rules.plural(/([^aeiouy]|qu)y$/i, '\1ies')
  rules.plural(/(x|ch|ss|sh)$/i, '\1es')
  rules.plural(/(matr|vert|ind)(?:ix|ex)$/i, '\1ices')
  rules.plural(/([m|l])ouse$/i, '\1ice')
  rules.plural(/^(ox)$/i, '\1en')
  rules.plural(/(quiz)$/i, '\1zes')
  
  rules.singular(/s$/i, '')
  rules.singular(/(n)ews$/i, '\1ews')
  rules.singular(/([ti])a$/i, '\1um')
  rules.singular(/((a)naly|(b)a|(d)iagno|(p)arenthe|(p)rogno|(s)ynop|(t)he)ses$/i, '\1\2sis')
  rules.singular(/(^analy)ses$/i, '\1sis')
  rules.singular(/([^f])ves$/i, '\1fe')
  rules.singular(/(hive)s$/i, '\1')
  rules.singular(/(tive)s$/i, '\1')
  rules.singular(/([lr])ves$/i, '\1f')
  rules.singular(/([^aeiouy]|qu)ies$/i, '\1y')
  rules.singular(/(s)eries$/i, '\1eries')
  rules.singular(/(m)ovies$/i, '\1ovie')
  rules.singular(/(x|ch|ss|sh)es$/i, '\1')
  rules.singular(/([m|l])ice$/i, '\1ouse')
  rules.singular(/(bus)es$/i, '\1')
  rules.singular(/(o)es$/i, '\1')
  rules.singular(/(shoe)s$/i, '\1')
  rules.singular(/(cris|ax|test)es$/i, '\1is')
  rules.singular(/(octop|vir|radi)i$/i, '\1us')
  rules.singular(/(alias|status)es$/i, '\1')
  rules.singular(/^(ox)en/i, '\1')
  rules.singular(/(vert|ind)ices$/i, '\1ex')
  rules.singular(/(matr)ices$/i, '\1ix')
  rules.singular(/(quiz)zes$/i, '\1')
  
  rules.irregular('person', 'people')
  rules.irregular('man', 'men')
  rules.irregular('child', 'children')
  rules.irregular('sex', 'sexes')
  rules.irregular('move', 'moves')
  rules.irregular('cow', 'kine')
  
  rules.uncountable(%w(equipment information rice money species series fish sheep))
end

module Inflection
  
  inflection "camel_case", "camelcase", "camelize", "mixed_case",
             "module_name", "modulize", "class_name"
  
  inflection "snake_case", "snakecase", "underscore",
             "pathize",    "path_name"
  
  inflection "chain_case", "chaincase", "dash_case",
             "dashcase", "dasherize"

  inflection "pluralize", "plural"

  inflection "singularize", "singular"

  inflection "local_variable", "local", "localvar"

  inflection "instance_variable", "instance", "instancevar"

  inflection "global_variable", "global", "globalvar"

  inflection "class_variable", "classvar",
             "module_variable", "modulevar"

  inflection "sub_camel_case", "subcamelcase", "lower_camel_case",
             "lowercamelcase", "lowercase_camel" do |str|
    CodeWords::Mangle.camel_case(str, false)
  end
  
  inflection 'underline', 'platform'
  
  format_test 'local_variable?', "local_variable", "local", "localvar"
  
  format_test 'class_variable?', "module_variable", "modulevar",
              "class_variable", "classvar"
  
  format_test 'underlined?', 'underlined', 'underline', 'platform'
  
  format_test 'global_variable?', "global_variable", "global", "globalvar"
  
  format_test 'instance_variable?', "instance_variable", "instance",
              "instancevar"
  
  format_test 'singular?', 'singular'
  
  format_test 'plural?', 'plural'
  
  format_test 'definable_operator?', 'operator', 'definable_operator'
  
  format_test 'method_identifier?', 'method_name', 'method', 'method_identifier'
  
  format_test 'constant_path?', 'constant', 'constant_name', 'constant_path'
end


class String
  include Inflection
end

class Symbol
  include Inflection
  
  def inflect(*inflection_names)
    super.to_sym
  end
end
