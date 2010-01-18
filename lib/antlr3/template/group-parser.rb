#!/usr/bin/env ruby
#
# Group.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.1
# Input grammar file: Group.g
# Generated at: 2010-01-17 06:59:16
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.3.1):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?(ANTLR3) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?(Gem) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '= 1.3.1' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

# - - - - - - begin action @parser::header - - - - - -
# Group.g


module ANTLR3
module Template

# - - - - - - end action @parser::header - - - - - - -


class Group
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:ID => 5, :EOF => -1, :T__19 => 19, :T__16 => 16, :WS => 9, 
                  :T__15 => 15, :T__18 => 18, :T__17 => 17, :T__12 => 12, 
                  :TEMPLATE => 6, :T__11 => 11, :T__14 => 14, :T__13 => 13, 
                  :T__10 => 10, :CONSTANT => 4, :COMMENT => 8, :STRING => 7)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("CONSTANT", "ID", "TEMPLATE", "STRING", "COMMENT", "WS", 
                   "'group'", "'::'", "';'", "'::='", "'('", "')'", "','", 
                   "'*'", "'&'", "'='")
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Group

    RULE_METHODS = [:group_spec, :group_name, :member, :parameter_declaration, 
                    :parameters, :parameter].freeze


    include TokenData

    generated_using( "Group.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.1" )

    def initialize(input, options = {})
      super(input, options)


    end

      def fetch_group( namespace, name )
        if namespace.const_defined?( name )
          group = namespace.const_get( name )
          unless group.is_a?( ANTLR3::Template::Group )
          
          end
        else
          group = ANTLR3::Template::Group.new
          namespace.const_set( name, group )
        end
        return( group )
      end
      
      def extract_template( token )
        case token.type
        when TEMPLATE
          token.text.gsub( /\A<<<\r?\n?|\r?\n?>>>\Z/, '' )
        end
      end
      
      def group( namespace = ::Object )
        group_spec( namespace )
      end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # parser rule group_spec
    # 
    # (in Group.g)
    # 58:1: group_spec[ namespace ] returns [ group ] : ( group_name[ $namespace ] | ) ( member[ $group ] )* ;
    def group_spec(namespace)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      group = nil
      group_name1 = nil

      begin
        # at line 59:5: ( group_name[ $namespace ] | ) ( member[ $group ] )*
        # at line 59:5: ( group_name[ $namespace ] | )
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == T__10) 
          alt_1 = 1
        elsif (look_1_0 == EOF || look_1_0 == ID) 
          alt_1 = 2
        else
        nvae = NoViableAlternative("", 1, 0)
          raise nvae
        end
        case alt_1
        when 1
          # at line 59:7: group_name[ $namespace ]
          @state.following.push(TOKENS_FOLLOWING_group_name_IN_group_spec_87)
          group_name1 = group_name(namespace)
          @state.following.pop
          # --> action
           group = group_name1 
          # <-- action

        when 2
          # at line 60:7: 
          # --> action
           group = ANTLR3::Template::Group.new 
          # <-- action

        end
        # at line 62:5: ( member[ $group ] )*
        loop do # decision 2
          alt_2 = 2
          look_2_0 = @input.peek(1)

          if (look_2_0 == ID) 
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 62:5: member[ $group ]
            @state.following.push(TOKENS_FOLLOWING_member_IN_group_spec_110)
            member(group)
            @state.following.pop

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)

      end
      
      return group
    end


    # parser rule group_name
    # 
    # (in Group.g)
    # 65:1: group_name[ namespace ] returns [ group ] : 'group' (mod= CONSTANT '::' )* name= CONSTANT ( ';' )? ;
    def group_name(namespace)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      group = nil
      mod = nil
      name = nil

      begin
        # at line 66:5: 'group' (mod= CONSTANT '::' )* name= CONSTANT ( ';' )?
        match(T__10, TOKENS_FOLLOWING_T__10_IN_group_name_130)
        # at line 67:5: (mod= CONSTANT '::' )*
        loop do # decision 3
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0 == CONSTANT) 
            look_3_1 = @input.peek(2)

            if (look_3_1 == T__11) 
              alt_3 = 1

            end

          end
          case alt_3
          when 1
            # at line 68:7: mod= CONSTANT '::'
            mod = match(CONSTANT, TOKENS_FOLLOWING_CONSTANT_IN_group_name_146)
            match(T__11, TOKENS_FOLLOWING_T__11_IN_group_name_148)
            # --> action
             namespace = namespace.const_get( mod.text ) 
            # <-- action

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        name = match(CONSTANT, TOKENS_FOLLOWING_CONSTANT_IN_group_name_171)
        # --> action
         group = fetch_group( namespace, name.text ) 
        # <-- action
        # at line 72:5: ( ';' )?
        alt_4 = 2
        look_4_0 = @input.peek(1)

        if (look_4_0 == T__12) 
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 72:5: ';'
          match(T__12, TOKENS_FOLLOWING_T__12_IN_group_name_179)

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)

      end
      
      return group
    end


    # parser rule member
    # 
    # (in Group.g)
    # 75:1: member[ group ] : name= ID ( parameter_declaration )? '::=' (aliased= ID | TEMPLATE | STRING ) ;
    def member(group)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      name = nil
      aliased = nil
      __TEMPLATE3__ = nil
      parameter_declaration2 = nil
      # - - - - @init action - - - -
       params = nil 

      begin
        # at line 77:5: name= ID ( parameter_declaration )? '::=' (aliased= ID | TEMPLATE | STRING )
        name = match(ID, TOKENS_FOLLOWING_ID_IN_member_201)
        # at line 77:13: ( parameter_declaration )?
        alt_5 = 2
        look_5_0 = @input.peek(1)

        if (look_5_0 == ID || look_5_0 == T__14 || look_5_0.between?(T__17, T__18)) 
          alt_5 = 1
        end
        case alt_5
        when 1
          # at line 77:15: parameter_declaration
          @state.following.push(TOKENS_FOLLOWING_parameter_declaration_IN_member_205)
          parameter_declaration2 = parameter_declaration
          @state.following.pop
          # --> action
           params = parameter_declaration2 
          # <-- action

        end
        match(T__13, TOKENS_FOLLOWING_T__13_IN_member_212)
        # at line 78:5: (aliased= ID | TEMPLATE | STRING )
        alt_6 = 3
        case look_6 = @input.peek(1)
        when ID then alt_6 = 1
        when TEMPLATE then alt_6 = 2
        when STRING then alt_6 = 3
        else
          nvae = NoViableAlternative("", 6, 0)
          raise nvae
        end
        case alt_6
        when 1
          # at line 78:7: aliased= ID
          aliased = match(ID, TOKENS_FOLLOWING_ID_IN_member_222)
          # --> action
           group.alias_template( aliased.text, name.text ) 
          # <-- action

        when 2
          # at line 79:7: TEMPLATE
          __TEMPLATE3__ = match(TEMPLATE, TOKENS_FOLLOWING_TEMPLATE_IN_member_232)
          # --> action
           group.define_template( name.text, extract_template( __TEMPLATE3__ ), params ) 
          # <-- action

        when 3
          # at line 80:7: STRING
          match(STRING, TOKENS_FOLLOWING_STRING_IN_member_244)

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)

      end
      
      return 
    end


    # parser rule parameter_declaration
    # 
    # (in Group.g)
    # 84:1: parameter_declaration returns [ list ] : ( '(' ( parameters )? ')' | parameters );
    def parameter_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      list = nil
      parameters4 = nil
      parameters5 = nil
      # - - - - @init action - - - -
       list = nil 

      begin
        # at line 86:3: ( '(' ( parameters )? ')' | parameters )
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0 == T__14) 
          alt_8 = 1
        elsif (look_8_0 == ID || look_8_0.between?(T__17, T__18)) 
          alt_8 = 2
        else
        nvae = NoViableAlternative("", 8, 0)
          raise nvae
        end
        case alt_8
        when 1
          # at line 86:5: '(' ( parameters )? ')'
          match(T__14, TOKENS_FOLLOWING_T__14_IN_parameter_declaration_272)
          # at line 86:9: ( parameters )?
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0 == ID || look_7_0.between?(T__17, T__18)) 
            alt_7 = 1
          end
          case alt_7
          when 1
            # at line 86:11: parameters
            @state.following.push(TOKENS_FOLLOWING_parameters_IN_parameter_declaration_276)
            parameters4 = parameters
            @state.following.pop
            # --> action
             list = parameters4 
            # <-- action

          end
          match(T__15, TOKENS_FOLLOWING_T__15_IN_parameter_declaration_283)

        when 2
          # at line 87:5: parameters
          @state.following.push(TOKENS_FOLLOWING_parameters_IN_parameter_declaration_289)
          parameters5 = parameters
          @state.following.pop
          # --> action
           list = parameters5 
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)

      end
      
      return list
    end


    # parser rule parameters
    # 
    # (in Group.g)
    # 90:1: parameters returns [ list ] : parameter[ $list ] ( ',' parameter[ $list ] )* ;
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      list = nil
      # - - - - @init action - - - -
       list = ANTLR3::Template::ParameterList.new 

      begin
        # at line 92:5: parameter[ $list ] ( ',' parameter[ $list ] )*
        @state.following.push(TOKENS_FOLLOWING_parameter_IN_parameters_313)
        parameter(list)
        @state.following.pop
        # at line 92:24: ( ',' parameter[ $list ] )*
        loop do # decision 9
          alt_9 = 2
          look_9_0 = @input.peek(1)

          if (look_9_0 == T__16) 
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 92:26: ',' parameter[ $list ]
            match(T__16, TOKENS_FOLLOWING_T__16_IN_parameters_318)
            @state.following.push(TOKENS_FOLLOWING_parameter_IN_parameters_320)
            parameter(list)
            @state.following.pop

          else
            break # out of loop for decision 9
          end
        end # loop for decision 9

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)

      end
      
      return list
    end


    # parser rule parameter
    # 
    # (in Group.g)
    # 95:1: parameter[ parameters ] : ( '*' name= ID | '&' name= ID | name= ID ( '=' v= STRING )? );
    def parameter(parameters)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      name = nil
      v = nil

      begin
        # at line 96:3: ( '*' name= ID | '&' name= ID | name= ID ( '=' v= STRING )? )
        alt_11 = 3
        case look_11 = @input.peek(1)
        when T__17 then alt_11 = 1
        when T__18 then alt_11 = 2
        when ID then alt_11 = 3
        else
          nvae = NoViableAlternative("", 11, 0)
          raise nvae
        end
        case alt_11
        when 1
          # at line 96:5: '*' name= ID
          match(T__17, TOKENS_FOLLOWING_T__17_IN_parameter_338)
          name = match(ID, TOKENS_FOLLOWING_ID_IN_parameter_342)
          # --> action
           parameters.splat = name.text 
          # <-- action

        when 2
          # at line 97:5: '&' name= ID
          match(T__18, TOKENS_FOLLOWING_T__18_IN_parameter_350)
          name = match(ID, TOKENS_FOLLOWING_ID_IN_parameter_354)
          # --> action
           parameters.block = name.text 
          # <-- action

        when 3
          # at line 98:5: name= ID ( '=' v= STRING )?
          name = match(ID, TOKENS_FOLLOWING_ID_IN_parameter_364)
          # --> action
           param = ANTLR3::Template::Parameter.new( name.text ) 
          # <-- action
          # at line 99:5: ( '=' v= STRING )?
          alt_10 = 2
          look_10_0 = @input.peek(1)

          if (look_10_0 == T__19) 
            alt_10 = 1
          end
          case alt_10
          when 1
            # at line 99:7: '=' v= STRING
            match(T__19, TOKENS_FOLLOWING_T__19_IN_parameter_378)
            v = match(STRING, TOKENS_FOLLOWING_STRING_IN_parameter_382)
            # --> action
             param.default = v.text 
            # <-- action

          end
          # --> action
           parameters.add( param ) 
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)

      end
      
      return 
    end



    TOKENS_FOLLOWING_group_name_IN_group_spec_87 = Set[1, 5]
    TOKENS_FOLLOWING_member_IN_group_spec_110 = Set[1, 5]
    TOKENS_FOLLOWING_T__10_IN_group_name_130 = Set[4]
    TOKENS_FOLLOWING_CONSTANT_IN_group_name_146 = Set[11]
    TOKENS_FOLLOWING_T__11_IN_group_name_148 = Set[4]
    TOKENS_FOLLOWING_CONSTANT_IN_group_name_171 = Set[1, 12]
    TOKENS_FOLLOWING_T__12_IN_group_name_179 = Set[1]
    TOKENS_FOLLOWING_ID_IN_member_201 = Set[5, 13, 14, 17, 18]
    TOKENS_FOLLOWING_parameter_declaration_IN_member_205 = Set[13]
    TOKENS_FOLLOWING_T__13_IN_member_212 = Set[5, 6, 7]
    TOKENS_FOLLOWING_ID_IN_member_222 = Set[1]
    TOKENS_FOLLOWING_TEMPLATE_IN_member_232 = Set[1]
    TOKENS_FOLLOWING_STRING_IN_member_244 = Set[1]
    TOKENS_FOLLOWING_T__14_IN_parameter_declaration_272 = Set[5, 14, 15, 17, 18]
    TOKENS_FOLLOWING_parameters_IN_parameter_declaration_276 = Set[15]
    TOKENS_FOLLOWING_T__15_IN_parameter_declaration_283 = Set[1]
    TOKENS_FOLLOWING_parameters_IN_parameter_declaration_289 = Set[1]
    TOKENS_FOLLOWING_parameter_IN_parameters_313 = Set[1, 16]
    TOKENS_FOLLOWING_T__16_IN_parameters_318 = Set[5, 14, 17, 18]
    TOKENS_FOLLOWING_parameter_IN_parameters_320 = Set[1, 16]
    TOKENS_FOLLOWING_T__17_IN_parameter_338 = Set[5]
    TOKENS_FOLLOWING_ID_IN_parameter_342 = Set[1]
    TOKENS_FOLLOWING_T__18_IN_parameter_350 = Set[5]
    TOKENS_FOLLOWING_ID_IN_parameter_354 = Set[1]
    TOKENS_FOLLOWING_ID_IN_parameter_364 = Set[1, 19]
    TOKENS_FOLLOWING_T__19_IN_parameter_378 = Set[7]
    TOKENS_FOLLOWING_STRING_IN_parameter_382 = Set[1]

  end # class Parser < ANTLR3::Parser

end
# - - - - - - begin action @parser::footer - - - - - -
# Group.g


end # module Template
end # module ANTLR3

# - - - - - - end action @parser::footer - - - - - - -


if __FILE__ == $0 and ARGV.first != '--'
  # - - - - - - begin action @parser::main - - - - - -
  # Group.g


    defined?(ANTLR3::Template::Group::Lexer) or require 'antlr3/template/group-lexer'
    ANTLR3::Template::Group::Parser.main( ARGV )

  # - - - - - - end action @parser::main - - - - - - -

end