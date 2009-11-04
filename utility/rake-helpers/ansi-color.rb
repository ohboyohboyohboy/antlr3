#!/usr/bin/ruby

class String
module ANSIEscapes
  CSI = "\e["              #CONTROL SEQUENCE INTRODUCER
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
  
  def bright_cyan
    return("\e[1m\e[36m" << self.to_s << "\e[0m")
  end
  
  def bright_cyan!
    insert(0, "\e[1m\e[36m") << "\e[0m"
  end
  
  def bright_black
    return("\e[1m\e[30m" << self.to_s << "\e[0m")
  end
  
  def bright_black!
    insert(0, "\e[1m\e[30m") << "\e[0m"
  end
  
  def bright_green
    return("\e[1m\e[32m" << self.to_s << "\e[0m")
  end
  
  def bright_green!
    insert(0, "\e[1m\e[32m") << "\e[0m"
  end
  
  def bright_white
    return("\e[1m\e[37m" << self.to_s << "\e[0m")
  end
  
  def bright_white!
    insert(0, "\e[1m\e[37m") << "\e[0m"
  end
  
  def bright_magenta
    return("\e[1m\e[35m" << self.to_s << "\e[0m")
  end
  
  def bright_magenta!
    insert(0, "\e[1m\e[35m") << "\e[0m"
  end
  
  def bright_blue
    return("\e[1m\e[34m" << self.to_s << "\e[0m")
  end
  
  def bright_blue!
    insert(0, "\e[1m\e[34m") << "\e[0m"
  end
  
  def bright_yellow
    return("\e[1m\e[33m" << self.to_s << "\e[0m")
  end
  
  def bright_yellow!
    insert(0, "\e[1m\e[33m") << "\e[0m"
  end
  
  def bright_red
    return("\e[1m\e[31m" << self.to_s << "\e[0m")
  end
  
  def bright_red!
    insert(0, "\e[1m\e[31m") << "\e[0m"
  end
  
  def on_black
    return("\e[40m" << self.to_s << "\e[0m")
  end
  
  def on_black!
    insert(0, "\e[40m") << "\e[0m"
  end
  
  def on_green
    return("\e[42m" << self.to_s << "\e[0m")
  end
  
  def on_green!
    insert(0, "\e[42m") << "\e[0m"
  end
  
  def on_yellow
    return("\e[43m" << self.to_s << "\e[0m")
  end
  
  def on_yellow!
    insert(0, "\e[43m") << "\e[0m"
  end
  
  def on_red
    return("\e[41m" << self.to_s << "\e[0m")
  end
  
  def on_red!
    insert(0, "\e[41m") << "\e[0m"
  end
  
  def on_blue
    return("\e[44m" << self.to_s << "\e[0m")
  end
  
  def on_blue!
    insert(0, "\e[44m") << "\e[0m"
  end
  
  def on_magenta
    return("\e[45m" << self.to_s << "\e[0m")
  end
  
  def on_magenta!
    insert(0, "\e[45m") << "\e[0m"
  end
  
  def on_cyan
    return("\e[46m" << self.to_s << "\e[0m")
  end
  
  def on_cyan!
    insert(0, "\e[46m") << "\e[0m"
  end
  
  def on_white
    return("\e[47m" << self.to_s << "\e[0m")
  end
  
  def on_white!
    insert(0, "\e[47m") << "\e[0m"
  end
  
  def white
    return("\e[37m" << self.to_s << "\e[0m")
  end
  
  def white!
    insert(0, "\e[37m") << "\e[0m"
  end
  
  def yellow
    return("\e[33m" << self.to_s << "\e[0m")
  end
  
  def yellow!
    insert(0, "\e[33m") << "\e[0m"
  end
  
  def magenta
    return("\e[35m" << self.to_s << "\e[0m")
  end
  
  def magenta!
    insert(0, "\e[35m") << "\e[0m"
  end
  
  def black
    return("\e[30m" << self.to_s << "\e[0m")
  end
  
  def black!
    insert(0, "\e[30m") << "\e[0m"
  end
  
  def cyan
    return("\e[36m" << self.to_s << "\e[0m")
  end
  
  def cyan!
    insert(0, "\e[36m") << "\e[0m"
  end
  
  def blue
    return("\e[34m" << self.to_s << "\e[0m")
  end
  
  def blue!
    insert(0, "\e[34m") << "\e[0m"
  end
  
  def red
    return("\e[31m" << self.to_s << "\e[0m")
  end
  
  def red!
    insert(0, "\e[31m") << "\e[0m"
  end
  
  def green
    return("\e[32m" << self.to_s << "\e[0m")
  end
  
  def green!
    insert(0, "\e[32m") << "\e[0m"
  end
  
  def blink
    return("\e[5m" << self.to_s << "\e[0m")
  end
  
  def blink!
    insert(0, "\e[5m") << "\e[0m"
  end
  
  def bold
    return("\e[1m" << self.to_s << "\e[0m")
  end
  
  def bold!
    insert(0, "\e[1m") << "\e[0m"
  end
  
  def dark
    return("\e[2m" << self.to_s << "\e[0m")
  end
  
  def dark!
    insert(0, "\e[2m") << "\e[0m"
  end
  
  def invert_colors
    return("\e[7m" << self.to_s << "\e[0m")
  end
  
  def invert_colors!
    insert(0, "\e[7m") << "\e[0m"
  end
  
  def underline
    return("\e[4m" << self.to_s << "\e[0m")
  end
  
  def underline!
    insert(0, "\e[4m") << "\e[0m"
  end
end
include ANSIEscapes
end
