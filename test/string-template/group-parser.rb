#!/usr/bin/ruby
# encoding: utf-8

gem :rspec
require 'spec'
require 'core/string/tab'
load './group-parser.rb'

def text(str)
  str.fixed_indent(0).chomp
end

include StringTemplate
  
describe GroupParser do
  before do
    @parser = GroupParser.new
  end
  
  it 'should parse String Template groups with templates' do
    group = text(<<-END)
      group Nonsense implements SomethingOrAnother;
      
      aTemplate(noDefault, aDefault = "text") ::=
      <<
      hey look it's a template
      >>
    END
    
    group = @parser.parse(group)
    group.should be_instance_of StringTemplate::Group
    group.supergroup.should be_nil
    group.interfaces.should have(1).thing
    group.interfaces.should include 'SomethingOrAnother'
    
    members = group.members
    members.should have(1).thing

    template = members[0]
    template.name.should == 'aTemplate'
    template.parameters.should have(2).things
    template.body.should == "hey look it's a template"
  end
  
  it "should parse external group files" do
    group = @parser.parse_file('./Strawberry.stg')
    group.name.should == 'Strawberry'
    group.supergroup.should == 'Vanilla'
    group.interfaces.should == %w(Flavored Comparable)
    group.members.should have(4).things
    group.source.should == File.read('./Strawberry.stg')
    
    members = group.members
    members[0].should be_instance_of Template
    members[1].should be_instance_of Template
    members[2].should be_instance_of Template
    members[3].should be_instance_of TypeMap

  end
  
  
end
