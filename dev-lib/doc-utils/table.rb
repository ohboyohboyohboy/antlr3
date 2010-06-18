#!/usr/bin/ruby
# encoding: utf-8

module ANTLRDoc
class Table
  include Markup
  
  def self.def_template( signature, source )
    t = ERB.new( source.chomp.fixed_indent( 0 ), nil, '%' )
    t.def_method( self, signature )
  end
  
  def_template( 'head', <<-'END' )
    <thead>
      <tr>
    % for col in @columns
        <th><%= markup( col.fetch( :title, '' ) ) %></th>
    % end
      </tr>
    </thead>
  END
  def_template( 'tag( name, options = nil )', <<-'END' )
    <<%= name %><%
      if options && options[ :class ]
    %> class="<%= options[ :class ] %>"<%
      end
    %>>
  END
  def_template( 'row( row )', <<-'END' )
    <%= tag( 'tr', row ) %>
    % for cell, col in row[ :cells ].zip( @columns ) do opts = col ? col.merge( cell ) : cell
        <%= tag( 'td', opts ) %><%= markup( cell.fetch( :content, '' ) ) %></td>
    % end
    </tr>
  END
  def_template( 'to_s', <<-'END' )
    <%= tag( 'table', :class => @table_class ) %>
    <%= head %>
    % for row in @body
    <%= row( row ) %>
    % end
    </table>
  END
  
  def initialize( data = {} )
    data = data.symbolize_keys
    @table_class = data[ :table_class ]
    
    @columns = data.fetch( :columns, [] ).map do | col |
      Hash === col ? col.symbolize_keys : { :title => col }
    end
    @body = data.fetch( :body, [] ).map do | row |
      row = row.map do | cell |
        Hash === cell ? cell.symbolize_keys : { :content => cell }
      end
      { :cells => row }
    end
    
    if @stripes = data.fetch( :stripes ) { %w( odd even ) }
      @body.each_slice( @stripes.length ) do | slice |
        slice.zip( @stripes ) do | row, stripe |
          row[ :class ] = stripe
        end
      end
    end
  end
end
  
end
