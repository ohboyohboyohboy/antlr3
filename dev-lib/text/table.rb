#!/usr/bin/ruby

require 'facets/array/pad'
require 'facets/array/conjoin'
require 'facets/string/align'
require 'facets/string/fold'
require 'facets/string/words'

class Text::Table
  ALIGNMENTS = [:left, :right, :center]
  DEFAULT_ALIGNMENT = :left
  TEXT_CAST = Proc.new { |v| v.nil? ? v : v.to_s }
  
  class Column
    def self.text(name, default_text = nil, &block)
      part(name) do
        cast(&TEXT_CAST)
        default_text and default { default_text.dup }
        on_change(&block)
      end
    end
    
    def self.shared_text(name, default_text = nil)
      [:left, :right].each do |side|
        method_name = :"#{side}_#{name}"
        variable = :"@#{method_name}"
        if side == :left
          text(method_name, default_text) do
            col = previous_column and
              col.update_text(:right, name, instance_variable_get(variable))
          end
        else
          text(method_name, default_text) do
            col = next_column and
              col.update_text(:left, name, instance_variable_get(variable))
          end
        end
      end
    end


    attr_reader :table, :index
    part(:width) do
      validate { |v| v > 0 }
      cast { |v| Integer(v) }
      default do
        cells = title ? [title, *self.cells] : self.cells
        cells.map { |cell| convert(cell).block_width }.max
      end
    end
    part(:alignment) do
      cast { |v| v.to_sym }
      validate { |v| ALIGNMENTS.include?(v) }
      default { DEFAULT_ALIGNMENT }
    end
    toggle_part(:wrap, false)
    toggle_part(:flow, true)

    text(:title)
    shared_text(:row_joint, ' | ')
    shared_text(:head_joint, '-+-')
    shared_text(:foot_joint, '-+-')
    shared_text(:title_divider_joint, '-+-')
    shared_text(:row_divider_joint, '-+-')
    
    text(:head_fill, '-')
    text(:foot_fill, '-')
    text(:title_divider_fill, '-')
    text(:row_divider_fill, '-')
    
    def converter(method = nil, &block)
      case
      when block_given? then @converter = block
      when !method.nil? then @converter = method
      when !defined?(@converter) then @converter = nil
      end
      return(@converter)
    end
    
    def initialize(table, index)
      @table = table
      @index = index
    end
    alias :configure :instance_eval
    def cells
      table.rows.map { |row| row[index] }
    end
    def previous_column
      index.zero? ? nil : table.columns[index.pred]
    end
    def next_column
      columns = table.columns
      index.succ == columns.length ? nil : columns[index.succ]
    end
    def first?
      index.zero?
    end
    def last?
      index.succ == table.columns.length
    end
    def prepare(cell_text)
      cell_text = convert(cell_text)
      if wrap?
        flow? and cell_text = cell_text.fold
        cell_text = cell_text.word_wrap(width)
      end
      cell_text.split(/\n/).map! do |line|
        line.align(alignment, width)
      end.join("\n")
    end
    def fill_text(text)
      fill = text * (width.to_f / text.length).ceil
      fill[0...width]
    end
    
    def left_width
      width = left_row_joint.length rescue 0
      @table.head? && left_head_joint and w = left_head_joint.length and width < w and width = w
      @table.foot? && left_foot_joint and w = left_foot_joint.length and width < w and width = w
      @table.title_row? && @table.title_divider? && left_title_divider_joint and
        w = left_title_divider_joint.length and width < w and width = w
      @table.row_divider? && row_divider_joint and w = row_divider_joint.length and width < w and width = w
      return(width)
    end
    def right_width
      width = right_row_joint.length rescue 0
      @table.head? && right_head_joint and w = right_head_joint.length and width < w and width = w
      @table.foot? && right_foot_joint and w = right_foot_joint.length and width < w and width = w
      @table.title_row? && @table.title_divider? && right_title_divider_joint and
        w = right_title_divider_joint.length and width < w and width = w
      @table.row_divider? && row_divider_joint and w = row_divider_joint.length and width < w and width = w
      return(width)
    end
    protected
    def convert(object)
      text =
        case converter
        when nil then object
        when String, Symbol then object.send(converter)
        when Proc then converter.call(object)
        end
      return(text.to_s)
    end

    def update_text(side, name, text)
      instance_variable_set(:"@#{side}_#{name}", text)
    end
  end
  class Row < ::Array
    def initialize(table, content)
      super(content)
      @table = table
    end
    
    def render(stripe_mask = nil)
      columns = @table.columns
      pad!(columns.length, '')
      
      cells = zip(columns).map do |object, column|
        column.prepare(object)
      end
      height = cells.map { |cell| cell.block_height }.max
      cells = cells.zip(columns).map do |cell, column|
        cell.split(/\n/).tap { |lines| lines.pad!(height, column.fill_text(' ')) }
      end.transpose
      lines = cells.map do |line_parts|
        line = '' << @table.left_row_edge
        columns.zip(line_parts).each do |column, part|
          line << part
          column.last? or line << column.right_row_joint
        end
        line << @table.right_row_edge
      end
      stripe_mask and lines.map! { |line| stripe_mask % line }
      lines.join("\n")
    end
    
  end
  
  def self.text(name, default_text = nil, &block)
    part(name) do
      cast(&TEXT_CAST)
      default_text and default { default_text.dup }
      on_change(&block)
    end
  end
  
  
  
  
  text(:left_head_edge, '+-')
  text(:right_head_edge, '-+')
  text(:left_row_edge, '| ')
  text(:right_row_edge, ' |')
  text(:left_row_divider_edge, '+-')
  text(:right_row_divider_edge, '-+')
  text(:right_title_divider_edge, '-+')
  text(:left_title_divider_edge, '+-')
  text(:left_foot_edge, '+-')
  text(:right_foot_edge, '-+')
  
  def self.[](*rows)
    new(*rows)
  end
  
  attr_reader :rows, :columns
  toggle_part(:head, true)
  toggle_part(:foot, true)
  toggle_part(:row_divider, false)
  def title_row?
    defined?(@title_row) or @title_row = @columns.any? { |c| c.title }
    return(@title_row)
  end
  def title_divider?
    defined?(@title_divider) or @title_divider = title_row?
    return @title_divider
  end
  attr_writer :title_row, :title_divider
  
  def each_column
    block_given? or return(enum_for(:each_column))
    columns.each do |column|
      yield(column)
    end
  end
  def each_row
    block_given? or return(enum_for(:each_row))
    rows.each do |row|
      yield(row)
    end
  end
  part(:stripe_masks) do
    cast { |v| v.to_a }
    validate { |v| v.length > 1 }
  end
  
  def initialize(rows, options = {}, &block)
    @columns = []
    @rows = []
    rows.each { |row| push(row) }
    block_given? and yield(self, *@columns)
  end
  
  %w(push unshift <<).each do |meth|
    class_eval(<<-END)
      def #{meth}(*rows)
        rows.each do |row|
          expand_columns(row.length)
          @rows.#{meth}(Row.new(self, row))
        end
      end
    END
  end
  
  def insert(index, *rows)
    rows = rows.map do |row|
      expand_columns(row.length)
      Row.new(self, row.pad(column_count, ''))
    end
    @rows.insert(index, *rows)
  end
  
  def render
    first_column = @columns.last
    last_column = @columns.last
    out = ''
    head? and out << render_skeleton(:head)
    if title_row?
      title = Row.new(self, @columns.map { |col| col.title })
      out << title.render << "\n"
      title_divider? and out << render_skeleton(:title_divider)
    end
    body =
      if stripes = stripe_masks
        @rows.each_slice(stripes.length).map do |row_slice|
          row_slice.zip(stripes).map { |row, stripe| row.render(stripe) }
        end.flatten
      else
        @rows.map { |row| row.render }
      end
    joint = row_divider? ? "\n" << render_skeleton(:row_divider) : "\n"
    out << body.join(joint) << "\n"
    foot? and out << render_skeleton(:foot)
    return(out)
  end
  
  alias :to_s :render
  def column_count
    @columns.length
  end
  
  def width=(w)
    current_width = self.width
    case w <=> current_width
    when -1
      diff = current_width - w
      cols = @columns.select { |c| c.flow? }
      unless cols.empty?
        additional, extra = diff.divmod(cols.length)
        cols.each { |c| c.width -= additional }
        cols.last.width -= extra
      end
    when 1
      diff = w - current_width
      cols = @columns.select { |c| c.flow? }
      unless cols.empty?
        additional, extra = diff.divmod(cols.length)
        cols.each { |c| c.width += additional }
        cols.last.width += extra
      end
    end
  end
  
  def width
    core_width = @columns.inject(0) { |w, c| w + c.width }
    core_width += @columns[1..-1].inject(0) { |w, c| w + c.left_width }
    core_width + left_width + right_width
  end
  
  def left_width
    width = left_row_edge.length rescue 0
    head? && left_head_edge and w = left_head_edge.length and width < w and width = w
    foot? && left_foot_edge and w = left_foot_edge.length and width < w and width = w
    title_row? && title_divider? && left_title_divider_edge and
      w = left_title_divider_edge.length and width < w and width = w
    row_divider? && row_divider_edge and w = row_divider_edge.length and width < w and width = w
    return(width)
  end
  
  def right_width
    width = right_row_edge.length rescue 0
    head? && right_head_edge and w = right_head_edge.length and width < w and width = w
    foot? && right_foot_edge and w = right_foot_edge.length and width < w and width = w
    title_row? && title_divider? && right_title_divider_edge and
      w = right_title_divider_edge.length and width < w and width = w
    row_divider? && row_divider_edge and w = row_divider_edge.length and width < w and width = w
    return(width)
  end
  
  private
  def render_skeleton(section)
    left_edge = :"left_#{section}_edge"
    right_edge = :"right_#{section}_edge"

    left_joint = :"left_#{section}_joint"
    right_joint = :"right_#{section}_joint"

    fill = :"#{section}_fill"

    first_column = @columns.first
    
    out = '' << self.send(left_edge) << first_column.fill_text(first_column.send(fill))
    @columns[1..-1].each do |column|
      out << column.send(left_joint) << (column.fill_text(column.send(fill)))
    end
    out << self.send(right_edge) << "\n"
  end
  
  def expand_columns(new_size)
    new_size > @columns.length and @columns.length.upto(new_size.pred) do |index|
      @columns.push(Column.new(self, index))
    end
  end
end
