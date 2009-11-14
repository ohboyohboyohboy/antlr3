#!/usr/bin/ruby

class IO
  
  def screen_width
    default_width = ( ENV['COLUMNS'] || 80 ).to_i
    begin
      tiocgwinsz = 0x5413    # ioctl constant for window size
      data = [0, 0, 0, 0].pack("SSSS")
      if ioctl(tiocgwinsz, data) >= 0 then
        rows, cols, xpixels, ypixels = data.unpack("SSSS")
        if cols >= 0 then cols else default_width end
      else
        default_width
      end
    rescue Exception
      default_width
    end
  end
  
  def screen_height
    default_height = ( ENV['LINES'] || 22 ).to_i
    begin
      tiocgwinsz = 0x5413
      data = [0, 0, 0, 0].pack("SSSS")
      if ioctl( tiocgwinsz, data ) >= 0 then
        rows, cols, xpixels, ypixels = data.unpack("SSSS")
        if rows >= 0 then rows else default_height end
      else
        default_height
      end
    rescue Exception
      default_height
    end
  end
  
end
