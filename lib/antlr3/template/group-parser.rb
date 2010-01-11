#!/usr/bin/env ruby
#
# Group.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.1
# Input grammar file: Group.g
# Generated at: 2010-01-10 19:38:43
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
    define_tokens(:WS => 9, :T__16 => 16, :T__15 => 15, :T__17 => 17, :TEMPLATE => 6, 
                  :T__12 => 12, :T__11 => 11, :T__14 => 14, :T__13 => 13, 
                  :T__10 => 10, :CONSTANT => 4, :COMMENT => 8, :ID => 5, 
                  :EOF => -1, :STRING => 7)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("CONSTANT", "ID", "TEMPLATE", "STRING", "COMMENT", "WS", 
                   "'group'", "'::'", "';'", "'::='", "'('", "')'", "','", 
                   "'='")
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Group

    RULE_METHODS = [:group_spec, :member, :parameter_declaration, :parameters, 
                    :parameter].freeze


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
          token.text.gsub( /\A<<\r?\n?|\r?\n?>>\Z/, '' )
        end
      end
      
      def group( namespace = ::Object )
        group_spec( namespace )
      end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # parser rule group_spec
    # 
    # (in Group.g)
    # 58:1: group_spec[ namespace ] returns [ group ] : 'group' (mod= CONSTANT '::' )* name= CONSTANT ( ';' )? ( member[ $group ] )* ;
    def group_spec(namespace)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      group = nil
      mod = nil
      name = nil

      begin
        # at line 59:5: 'group' (mod= CONSTANT '::' )* name= CONSTANT ( ';' )? ( member[ $group ] )*
        match(T__10, TOKENS_FOLLOWING_T__10_IN_group_spec_85)
        # at line 60:5: (mod= CONSTANT '::' )*
        loop do  #loop 1
          alt_1 = 2
          look_1_0 = @input.peek(1)

          if (look_1_0 == CONSTANT) 
            look_1_1 = @input.peek(2)

            if (look_1_1 == T__11) 
              alt_1 = 1

            end

          end
          case alt_1
          when 1
            # at line 61:7: mod= CONSTANT '::'
            mod = match(CONSTANT, TOKENS_FOLLOWING_CONSTANT_IN_group_spec_101)
            match(T__11, TOKENS_FOLLOWING_T__11_IN_group_spec_103)
            # --> action
             namespace = namespace.const_get( mod.text ) 
            # <-- action

          else
            break #loop 1
          end
        end
        name = match(CONSTANT, TOKENS_FOLLOWING_CONSTANT_IN_group_spec_126)
        # --> action
         group = fetch_group( namespace, name.text ) 
        # <-- action
        # at line 65:5: ( ';' )?
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0 == T__12) 
          alt_2 = 1
        end
        case alt_2
        when 1
          # at line 65:5: ';'
          match(T__12, TOKENS_FOLLOWING_T__12_IN_group_spec_134)

        end
        # at line 66:5: ( member[ $group ] )*
        loop do  #loop 3
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0 == ID) 
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 66:5: member[ $group ]
            @state.following.push(TOKENS_FOLLOWING_member_IN_group_spec_141)
            member(group)
            @state.following.pop

          else
            break #loop 3
          end
        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)

      end
      
      return group
    end


    # parser rule member
    # 
    # (in Group.g)
    # 69:1: member[ group ] : name= ID ( parameter_declaration )? '::=' (aliased= ID | TEMPLATE | STRING ) ;
    def member(group)
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      name = nil
      aliased = nil
      __TEMPLATE1__ = nil

      begin
        # at line 70:5: name= ID ( parameter_declaration )? '::=' (aliased= ID | TEMPLATE | STRING )
        name = match(ID, TOKENS_FOLLOWING_ID_IN_member_159)
        # at line 70:13: ( parameter_declaration )?
        alt_4 = 2
        look_4_0 = @input.peek(1)

        if (look_4_0 == ID || look_4_0 == T__14) 
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 70:13: parameter_declaration
          @state.following.push(TOKENS_FOLLOWING_parameter_declaration_IN_member_161)
          parameter_declaration
          @state.following.pop

        end
        match(T__13, TOKENS_FOLLOWING_T__13_IN_member_164)
        # at line 71:5: (aliased= ID | TEMPLATE | STRING )
        alt_5 = 3
        case look_5 = @input.peek(1)
        when ID then alt_5 = 1
        when TEMPLATE then alt_5 = 2
        when STRING then alt_5 = 3
        else
          nvae = NoViableAlternative("", 5, 0)
          raise nvae
        end
        case alt_5
        when 1
          # at line 71:7: aliased= ID
          aliased = match(ID, TOKENS_FOLLOWING_ID_IN_member_174)
          # --> action
           group.alias_template( aliased.text, name.text ) 
          # <-- action

        when 2
          # at line 72:7: TEMPLATE
          __TEMPLATE1__ = match(TEMPLATE, TOKENS_FOLLOWING_TEMPLATE_IN_member_184)
          # --> action
           group.define_template( name.text, extract_template( __TEMPLATE1__ ) ) 
          # <-- action

        when 3
          # at line 73:7: STRING
          match(STRING, TOKENS_FOLLOWING_STRING_IN_member_196)

        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)

      end
      
      return 
    end


    # parser rule parameter_declaration
    # 
    # (in Group.g)
    # 77:1: parameter_declaration : ( '(' ( parameters )? ')' | parameters );
    def parameter_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      begin
        # at line 78:3: ( '(' ( parameters )? ')' | parameters )
        alt_7 = 2
        look_7_0 = @input.peek(1)

        if (look_7_0 == T__14) 
          alt_7 = 1
        elsif (look_7_0 == ID) 
          alt_7 = 2
        else
        nvae = NoViableAlternative("", 7, 0)
          raise nvae
        end
        case alt_7
        when 1
          # at line 78:5: '(' ( parameters )? ')'
          match(T__14, TOKENS_FOLLOWING_T__14_IN_parameter_declaration_215)
          # at line 78:9: ( parameters )?
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == ID) 
            alt_6 = 1
          end
          case alt_6
          when 1
            # at line 78:9: parameters
            @state.following.push(TOKENS_FOLLOWING_parameters_IN_parameter_declaration_217)
            parameters
            @state.following.pop

          end
          match(T__15, TOKENS_FOLLOWING_T__15_IN_parameter_declaration_220)

        when 2
          # at line 79:5: parameters
          @state.following.push(TOKENS_FOLLOWING_parameters_IN_parameter_declaration_226)
          parameters
          @state.following.pop

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


    # parser rule parameters
    # 
    # (in Group.g)
    # 82:1: parameters : parameter ( ',' parameter )* ;
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      begin
        # at line 83:5: parameter ( ',' parameter )*
        @state.following.push(TOKENS_FOLLOWING_parameter_IN_parameters_239)
        parameter
        @state.following.pop
        # at line 83:15: ( ',' parameter )*
        loop do  #loop 8
          alt_8 = 2
          look_8_0 = @input.peek(1)

          if (look_8_0 == T__16) 
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 83:17: ',' parameter
            match(T__16, TOKENS_FOLLOWING_T__16_IN_parameters_243)
            @state.following.push(TOKENS_FOLLOWING_parameter_IN_parameters_245)
            parameter
            @state.following.pop

          else
            break #loop 8
          end
        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)

      end
      
      return 
    end


    # parser rule parameter
    # 
    # (in Group.g)
    # 86:1: parameter : ID ( '=' ( STRING | TEMPLATE | ID ) )? ;
    def parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      begin
        # at line 87:5: ID ( '=' ( STRING | TEMPLATE | ID ) )?
        match(ID, TOKENS_FOLLOWING_ID_IN_parameter_261)
        # at line 87:8: ( '=' ( STRING | TEMPLATE | ID ) )?
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == T__17) 
          alt_9 = 1
        end
        case alt_9
        when 1
          # at line 87:10: '=' ( STRING | TEMPLATE | ID )
          match(T__17, TOKENS_FOLLOWING_T__17_IN_parameter_265)
          if @input.peek(1).between?(ID, STRING)
            @input.consume
            @state.error_recovery = false
          else
            mse = MismatchedSet(nil)
            raise mse
          end



        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)

      end
      
      return 
    end



    TOKENS_FOLLOWING_T__10_IN_group_spec_85 = Set[4]
    TOKENS_FOLLOWING_CONSTANT_IN_group_spec_101 = Set[11]
    TOKENS_FOLLOWING_T__11_IN_group_spec_103 = Set[4]
    TOKENS_FOLLOWING_CONSTANT_IN_group_spec_126 = Set[1, 5, 12]
    TOKENS_FOLLOWING_T__12_IN_group_spec_134 = Set[1, 5]
    TOKENS_FOLLOWING_member_IN_group_spec_141 = Set[1, 5]
    TOKENS_FOLLOWING_ID_IN_member_159 = Set[5, 13, 14]
    TOKENS_FOLLOWING_parameter_declaration_IN_member_161 = Set[13]
    TOKENS_FOLLOWING_T__13_IN_member_164 = Set[5, 6, 7]
    TOKENS_FOLLOWING_ID_IN_member_174 = Set[1]
    TOKENS_FOLLOWING_TEMPLATE_IN_member_184 = Set[1]
    TOKENS_FOLLOWING_STRING_IN_member_196 = Set[1]
    TOKENS_FOLLOWING_T__14_IN_parameter_declaration_215 = Set[5, 14, 15]
    TOKENS_FOLLOWING_parameters_IN_parameter_declaration_217 = Set[15]
    TOKENS_FOLLOWING_T__15_IN_parameter_declaration_220 = Set[1]
    TOKENS_FOLLOWING_parameters_IN_parameter_declaration_226 = Set[1]
    TOKENS_FOLLOWING_parameter_IN_parameters_239 = Set[1, 16]
    TOKENS_FOLLOWING_T__16_IN_parameters_243 = Set[5, 14]
    TOKENS_FOLLOWING_parameter_IN_parameters_245 = Set[1, 16]
    TOKENS_FOLLOWING_ID_IN_parameter_261 = Set[1, 17]
    TOKENS_FOLLOWING_T__17_IN_parameter_265 = Set[5, 6, 7]
    TOKENS_FOLLOWING_set_IN_parameter_267 = Set[1]

  end # class Parser < ANTLR3::Parser

end
# - - - - - - begin action @parser::footer - - - - - -
# Group.g


end # module ANTLR3
end # module Template

# - - - - - - end action @parser::footer - - - - - - -


if __FILE__ == $0 and ARGV.first != '--'
  # - - - - - - begin action @parser::main - - - - - -
  # Group.g


    require 'antlr3/template/group-lexer'
    ANTLR3::Template::Group::Parser.main( ARGV )

  # - - - - - - end action @parser::main - - - - - - -

end