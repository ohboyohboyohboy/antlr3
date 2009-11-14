#!/usr/bin/ruby

class String

module ANSIEscapes
  CLEAR = "\e[0m"
  STYLES = {
    :blink         =>"\e[5m",
    :bold          =>"\e[1m",
    :underline     =>"\e[4m",
    :invert_colors =>"\e[7m",     #inverts the background and foreground colors
    :dark          =>"\e[2m"
  }
  
  FOREGROUND_COLORS = {
    :cyan           => "\e[36m",
    :blue           => "\e[34m",
    :bright_red     => "\e[1m\e[31m",
    :red            => "\e[31m",
    :bright_black   => "\e[1m\e[30m",
    :white          => "\e[37m",
    :bright_white   => "\e[1m\e[37m",
    :bright_blue    => "\e[1m\e[34m",
    :green          => "\e[32m",
    :bright_yellow  => "\e[1m\e[33m",
    :bright_cyan    => "\e[1m\e[36m",
    :yellow         => "\e[33m",
    :magenta        => "\e[35m",
    :bright_green   => "\e[1m\e[32m",
    :black          => "\e[30m",
    :bright_magenta => "\e[1m\e[35m"
  }
  
  BACKGROUND_COLORS = {
    :on_white   => "\e[47m",
    :on_green   => "\e[42m",
    :on_red     => "\e[41m",
    :on_yellow  => "\e[43m",
    :on_blue    => "\e[44m",
    :on_magenta => "\e[45m",
    :on_cyan    => "\e[46m",
    :on_black   => "\e[40m"
  }
  
  COLORS = BACKGROUND_COLORS.merge(FOREGROUND_COLORS)
  ALL_ESCAPES = COLORS.merge(STYLES)
  
  for name, code in ALL_ESCAPES
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ name }
        #{ code.inspect } << self.to_s << CLEAR
      end
      
      def #{ name }!
        insert( 0, #{ code.inspect } ) << CLEAR
      end
    END
  end
  
  # remove all ansi color escapes
  def bleach
    gsub(/\e\[\d+m/, '')
  end
  
  def bleach!
    gsub!(/\e\[\d+m/, '')
  end
  
end

include ANSIEscapes

end