#!/usr/bin/ruby
# encoding: utf-8

require 'text'
require 'facets/hash/symbolize_keys'
require 'facets/string/words'

module Text
  class Box
    BOXBITS = {
      :double => {
        :straight => {
          :horizontal => '═',
          :vertical   => '║'
        },
        :corners  =>  {
          :top_left     => '╔',
          :top_right    => '╗',
          :bottom_left  => '╚',
          :bottom_right => '╝'
        },
        :joints   =>  {
          :nes   => '╠',
          :nsw   => '╣',
          :esw   => '╦',
          :new   => '╩',
          :nesw  => '╬'
        }
      },
      :single  =>  {
        :straight => {
          :horizontal => '─',
          :vertical   => '│'
        },
        :corners  =>  {
          :top_left     => '┌',
          :top_right    => '┐',
          :bottom_left  => '└',
          :bottom_right => '┘'
        },
        :joints   =>  {
          :nes   => '├',
          :nsw   => '┤',
          :esw   => '┬',
          :new   => '┴',
          :nesw  => '┼'
        }
      },
      :ascii => {
        :straight => {
          :vertical   => "|",
          :horizontal => "-"
        },
        :corners => {
          :top_left     =>"+",
          :top_right    =>"+",
          :bottom_left  =>"+",
          :bottom_right =>"+"
        },
        :joints   =>  {
            :nes   => '+',
            :nsw   => '+',
            :esw   => '+',
            :new   => '+',
            :nesw  => '+'
        }
      }
    }

    
    LINE_STYLE_OPTIONS = [:single, :double, :ascii].freeze
    TEXT_HANDLING_OPTIONS = [:wrap, :truncate].freeze
    ALIGN_OPTIONS = [:left, :right, :center].freeze
    
    BoxBits = Struct.new( :left, :top_left, :top, :top_right, :right,
                         :bottom_right, :bottom, :bottom_left )
    
    class BoxBits
      def corners=(char)
        self.top_left     = char
        self.top_right    = char
        self.bottom_right = char
        self.bottom_left  = char
      end
      
      def vertical=(char)
        self.right = char
        self.left  = char
      end
      
      def horizontal=(char)
        self.top    = char
        self.bottom = char
      end
      
      def sides=(char)
        self.vertical   = char
        self.horizontal = char
      end
      
    end
    
    Sides = Struct.new( :left, :top, :right, :bottom )
    
    class SideMetrics < Sides
      for member in members
        class_eval( <<-END, __FILE__, __LINE__ + 1 )
          def #{member}( value = nil )
            value and self.#{member} = value
            super()
          end
          
          def #{member}=( value )
            super( value.to_i )
          end
        END
      end
    end
    
    class SideToggles < Sides
      for member in members
        class_eval( <<-END, __FILE__, __LINE__ + 1 )
          def #{member}=( value )
            super( value ? true : false )
          end
          
          alias :#{member}? :#{member}
          
          def #{member}( value = nil )
            self.value = value unless value.nil?
            super()
          end
        END
      end
    end
    
    Corners = Part::Structure.new do
      CornerTypes = [:corner, :joint, :vertical, :horizontal]
      
      [:top_left, :top_right, :bottom_right, :bottom_left].each do |side|
        part(side, :corner) do
          validate { |v| CornerTypes.include?(v) }
        end
      end
    end


    BoxMetrics = Part::Structure.new do
      %w{full margin border padding text box}.each do |type|
        part(type, 0)
      end
      alias :total :full
      alias :total= :full=
    end

    part(:line_style, :single) do
      cast(:to_sym)
      validate { |v| LINE_STYLE_OPTIONS.include?(v) }
    end
    part(:width, :fit) do
      validate { |v| v.is_a?(Integer) || (v == :fit) }
    end
    part(:text_handling, :wrap) do
      cast { |v| v.to_sym }
      validate { |v| TEXT_HANDLING_OPTIONS.include?(v) }
    end
    part(:align, :left) do
      cast { |v| v.to_sym }
      validate { |v| ALIGN_OPTIONS.include?(v) }
    end
    part(:padding) do
      default { SideMetrics.new(1,0,1,0) }
      read_only
    end
    part(:margin) do
      default { SideMetrics.new(0,0,0,0) }
      read_only
    end
    part(:border) do
      default { SideToggles.new(true, true, true, true) }
      read_only
    end
    part(:corners) do
      default { Corners.new }
      read_only
    end
    part(:lines) do
      cast { |v| v.to_s.split(/\n/) }
    end
    part(:caption) do
      cast { |v| v.to_s }
    end
    part(:width_metrics) do
      default { BoxMetrics.new }
      read_only
    end
    part(:height_metrics) do
      default { BoxMetrics.new }
      read_only
    end
    part(:box_bits) do
      read_only
      default do
        BoxBits.new(
          BOXBITS[self.line_style][:straight][:vertical],
          BOXBITS[self.line_style][:corners][:top_left],
          BOXBITS[self.line_style][:straight][:horizontal],
          BOXBITS[self.line_style][:corners][:top_right],
          BOXBITS[self.line_style][:straight][:vertical],
          BOXBITS[self.line_style][:corners][:bottom_right],
          BOXBITS[self.line_style][:straight][:horizontal],
          BOXBITS[self.line_style][:corners][:bottom_left]
        )
      end
    end
    
    alias :wm :width_metrics
    alias :hm :height_metrics
    alias :borders :border
    alias :margins :margin
    alias :characters :box_bits
    
    # * <tt>line_style</tt> - <tt>T:single</tt> | <tt>:double</tt> (default: <tt>:single</tt>)
    # * <tt>width</tt> - <tt>:fit</tt> | <tt>number-of-colums</tt> (default: <tt>fit</tt>)
    # * <tt>text_handling</tt> - :wrap | :truncate
    # * <tt>align</tt> - :left | :right | :center
    # * <tt>padding</tt> - <tt>{ :left =>  num-space, :right => ..., :top => ..., :bottom => ... }</tt>
    # * <tt>margin</tt> - <tt>{ :left =>  num-space, :right => ..., :top => ..., :bottom => ... }</tt>
    # * <tt>border</tt> - <tt>{ :left => true|false, :right => ..., :top => ..., :bottom => ...}</tt>
    # * <tt>corners</tt> - <tt>{ :top_left => :corner|:joint|:hline|:vline, :top_right => ..., :bottom_left => ..., :bottom_right => ...}
    def initialize(text, &b)
      self.lines = text
      instance_eval(&b) if block_given?
      prepare
    end
    
    def fixed_width?
      Fixnum === self.width
    end
    
    def render
      @rows = []
      margin.top.times { @rows << (' ' * wm.total) }
      bits = self.box_bits
      if border.top
        row = [] << (' ' * margin.left)
        row << bits.top_left if border.left
        if(self.caption)
            capt = "[#{@caption}]"
            leftover = wm.box - wm.border - capt.jlength
            row << capt
            row << (bits.top * (leftover))
        else
            row << (bits.top * (wm.box - wm.border))
        end
        row << bits.top_right if border.right
        row << (' ' * margin.right)
        @rows << row.join
      end
      self.padding.top.times do
        row = [] << (' ' * margin.left)
        row << bits.left if border.left
        row << (' ' * (wm.box - wm.border))
        row << bits.right if border.right
        row << (' ' * margin.right)
        @rows << row.join
      end
      self.lines.each do |line|
        row = [] << (' ' * margin.left)
        row << bits.left if border.left
        row << (' ' * padding.left)
        row << line
        row << (' ' * padding.right)
        row << bits.right if border.right
        row << (' ' * margin.right)
        @rows << row.join                
      end
      padding.bottom.times do
        row = [] << (' ' * margin.left)
        row << bits.left if border.left
        row << (' ' * (wm.box - wm.border))
        row << bits.right if border.right
        row << (' ' * margin.right)
        @rows << row.join
      end
      if border.bottom
        row = [] << (' ' * margin.left)
        row << bits.bottom_left if border.left
        row << (bits.bottom * (wm.box - wm.border))
        row << bits.bottom_right if border.right
        row << (' ' * margin.right)
        @rows << row.join
      end
      
      margin.bottom.times { @rows << (' ' * wm.total_width) }
      return @rows.join("\n")
    end
    
    
    alias :to_s :render
    private
    def calculate_width
      if fixed_width?
        wm.total = width
        wm.margin = margin.left + margin.right
        wm.border = border.left && border.right ? 2 :
                               border.left || border.right ? 1 : 0
        wm.padding = padding.left + padding.right
        wm.text = (width - wm.margin - wm.border - wm.padding)
        wm.box  = width - wm.margin
      else
        wm.text = lines.map { |l| l.jlength }.max
        wm.padding = padding.left + padding.right
        wm.border = border.left && border.right ? 2 :
                    border.left || border.right ? 1 : 0
        wm.box = wm.border + wm.padding + wm.text
        wm.margin = margin.left + margin.right
        wm.total = wm.box + wm.margin
      end
    end
    def calculate_height
      hm.padding = padding.top + padding.bottom
      hm.margin  = margin.top + margin.bottom
      hm.border = border.top && border.bottom ? 2 :
                  border.top || border.bottom ? 1 : 0
      hm.text = lines.length
      hm.box = hm.padding + hm.text + hm.border
      hm.total = hm.margin + hm.box
    end
    
    def prepare
      calculate_width
      if fixed_width?
        resize_text
      end
      calculate_height
      align_text
    end
    def resize_text
      buff = []
      self.lines.each do |line|
        case text_handling
        when :wrap
          line.word_wrap(wm.text).split(/\n/).each { |nl| buff << nl }
        when :truncate
          buff << line.brief(wm.text)
        end
      end
      @lines = buff
    end
    def align_text
      @lines = case self.align
      when :left
        self.lines.map { |line| line.ljust(wm.text) }
      when :right
        self.lines.map { |line| line.rjust(wm.text) }
      when :center
        self.lines.map { |line| line.center(wm.text) }
      end
    end
  end
end
