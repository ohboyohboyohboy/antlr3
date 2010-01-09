#!/usr/bin/ruby
# encoding: utf-8

require 'spec'
require 'antlr3/template'
require 'antlr3/util'

include ANTLR3
TEMPLATE_NAMES = [ :method, :class_def, :attribute ]

describe Template do
  describe Template::Group do
    include ANTLR3::Util
    
    before :each do
      @group = Template::Group.new do
        extend ANTLR3::Util
        define_template( :class_def, tidy( <<-'END'.chomp ) )
        | class <%= @name %><% if @superclass %> < <%= @superclass %><% end %>
        | % if @attributes
        | 
        | % for attr, access in @attributes 
        | <%= attribute( :name => attr, :access => ( access || 'rw' ) ).to_s.chomp %>
        | % end
        | % end
        | % if @methods
        | % for method in ( @methods || [] )
        | <%= method( method ) %>
        | % end
        | % end
        | end
        END
        
        define_template( :attribute, tidy( <<-'END'.chomp ) )
        | % case @access.to_s.downcase
        | % when 'r'
        |   attr_reader :<%= @name %>
        | % when 'w'
        |   attr_writer :<%= @name %>
        | % else
        |   attr_accessor :<%= @name %>
        | % end
        END
        
        define_template( :method, tidy( <<-'END'.chomp ) )
        |   
        |   def <%= @name %><% if @arguments and not @arguments.empty? %>( <%= @arguments.join( ', ' ) %> )<% end %>
        | <%= @body.gsub( /^/, '    ' ) %>
        |   end
        END
      end
      
      @Method = Struct.new( :name, :body, :arguments )
      attributes = [
        %w( family ),
        %w( name r )
      ]
      methods = [
        @Method.new( 'eat', %q[puts( "ate %s %s" % [ number, @name ] )], %w( number ) ),
        @Method.new( :to_s, '@name.to_s.dup' )
      ]
      
      @vegetable = @group.class_def(
        :name => 'Vegetable',
        :superclass => 'Food',
        :attributes => attributes,
        :methods => methods
      )
    end
    
    example "template definitions" do
      templates = @group.templates
      templates.should_not be_empty
      templates.should equal @group::TEMPLATES
      
      names = templates.keys
      
      names.should have(3).things
      for template_name in TEMPLATE_NAMES
        names.should include template_name
        template_class = templates[ template_name ]
        template_class.should be_a_kind_of Class
        template_class.superclass.should equal Template::Context
        template_class.should be < @group # it should include the group module
      end
    end
    
    example "template_defined?( name ) should verify whether a template is defined in a group" do
      for name in TEMPLATE_NAMES
        @group.template_defined?( name ).should be_true
        @group.template_defined?( name.to_s ).should be_true
      end
      
      @group.template_defined?( :somethign_else ).should be_false
    end
    
    example "template method definitions" do
      for name in TEMPLATE_NAMES
        @group.should respond_to( name )
        @group.should respond_to( "#{ name }!" )
        @group.private_instance_methods.should include name.to_s
        @group.private_instance_methods.should include "#{ name }!"
      end
    end
    
    example "template method operation" do
      value = @group.class_def
      value.should be_a_kind_of Template::Context
      
      value = @group.class_def!
      value.should be_a_kind_of String
      
      value = @group.attribute( :name => 'a' )
      value.should be_a_kind_of Template::Context
    end
    
    example "template object content" do
      for iv in %w( @name @superclass @attributes @methods )
        @vegetable.instance_variables.should include iv
      end
      
      @vegetable[ :name ].should == 'Vegetable'
      @vegetable.name.should == 'Vegetable'
    end
    
    example "template object string rendering" do
      @vegetable.to_s.should == tidy( <<-END.chomp )
      | class Vegetable < Food
      |
      |   attr_accessor :family
      |   attr_reader :name
      |   
      |   def eat( number )
      |     puts( "ate %s %s" % [ number, @name ] )
      |   end
      |   
      |   def to_s
      |     @name.to_s.dup
      |   end
      | end
      END
    end
    
  end
  
end
