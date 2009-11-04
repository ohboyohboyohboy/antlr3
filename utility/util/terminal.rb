#!/usr/bin/ruby

#require 'facets/ansicode'
unless defined?(Terminal)
module Terminal
  # Console screen width (taken from progress bar)
  #
  # TODO: Don't know how portable #screen_width is.
  module Constants
    BRKINT = 2
    BSDLY = 8192
    CBAUD = 4111
    CBAUDEX = 4096
    CC = 6
    CDSUSP = 25
    CEOF = 4
    CEOL = 0
    CEOT = 4
    CERASE = 127
    CFLAG = 2
    CFLUSH = 15
    CIBAUD = 269418496
    CINTR = 3
    CKILL = 21
    CLNEXT = 22
    CLOCAL = 2048
    CQUIT = 28
    CRDLY = 1536
    CREAD = 128
    CRPRNT = 18
    CRTSCTS = 2147483648
    CSIZE = 48
    CSTART = 17
    CSTOP = 19
    CSTOPB = 64
    CSUSP = 26
    CWERASE = 23
    ECHO = 8
    ECHOCTL = 512
    ECHOE = 16
    ECHOK = 32
    ECHOKE = 2048
    ECHONL = 64
    ECHOPRT = 1024
    EXTA = 14
    EXTB = 15
    FFDLY = 32768
    FIOASYNC = 21586
    FIOCLEX = 21585
    FIONBIO = 21537
    FIONCLEX = 21584
    FIONREAD = 21531
    FLUSHO = 4096
    HUPCL = 1024
    ICANON = 2
    ICRNL = 256
    IEXTEN = 32768
    IFLAG = 0
    IGNBRK = 1
    IGNCR = 128
    IGNPAR = 4
    IMAXBEL = 8192
    INLCR = 64
    INPCK = 16
    IOCSIZE_MASK = 1073676288
    IOCSIZE_SHIFT = 16
    ISIG = 1
    ISPEED = 4
    ISTRIP = 32
    IUCLC = 512
    IXANY = 2048
    IXOFF = 4096
    IXON = 1024
    LFLAG = 3
    NCC = 8
    NCCS = 32
    NLDLY = 256
    NOFLSH = 128
    N_MOUSE = 2
    N_PPP = 3
    N_SLIP = 1
    N_STRIP = 4
    N_TTY = 0
    OCRNL = 8
    OFDEL = 128
    OFILL = 64
    OFLAG = 1
    OLCUC = 2
    ONLCR = 4
    ONLRET = 32
    ONOCR = 16
    OPOST = 1
    OSPEED = 5
    PARENB = 256
    PARMRK = 8
    PARODD = 512
    PENDIN = 16384
    TABDLY = 6144
    TCFLSH = 21515
    TCGETA = 21509
    TCGETS = 21505
    TCIFLUSH = 0
    TCIOFF = 2
    TCIOFLUSH = 2
    TCION = 3
    TCOFLUSH = 1
    TCOOFF = 0
    TCOON = 1
    TCSADRAIN = 1
    TCSAFLUSH = 2
    TCSANOW = 0
    TCSBRK = 21513
    TCSBRKP = 21541
    TCSETA = 21510
    TCSETAF = 21512
    TCSETAW = 21511
    TCSETS = 21506
    TCSETSF = 21508
    TCSETSW = 21507
    TCXONC = 21514
    TIOCCONS = 21533
    TIOCEXCL = 21516
    TIOCGETD = 21540
    TIOCGICOUNT = 21597
    TIOCGLCKTRMIOS = 21590
    TIOCGPGRP = 21519
    TIOCGSERIAL = 21534
    TIOCGSOFTCAR = 21529
    TIOCGWINSZ = 21523
    TIOCINQ = 21531
    TIOCLINUX = 21532
    TIOCMBIC = 21527
    TIOCMBIS = 21526
    TIOCMGET = 21525
    TIOCMIWAIT = 21596
    TIOCMSET = 21528
    TIOCM_CAR = 64
    TIOCM_CD = 64
    TIOCM_CTS = 32
    TIOCM_DSR = 256
    TIOCM_DTR = 2
    TIOCM_LE = 1
    TIOCM_RI = 128
    TIOCM_RNG = 128
    TIOCM_RTS = 4
    TIOCM_SR = 16
    TIOCM_ST = 8
    TIOCNOTTY = 21538
    TIOCNXCL = 21517
    TIOCOUTQ = 21521
    TIOCPKT = 21536
    TIOCPKT_DATA = 0
    TIOCPKT_DOSTOP = 32
    TIOCPKT_FLUSHREAD = 1
    TIOCPKT_FLUSHWRITE = 2
    TIOCPKT_NOSTOP = 16
    TIOCPKT_START = 8
    TIOCPKT_STOP = 4
    TIOCSCTTY = 21518
    TIOCSERCONFIG = 21587
    TIOCSERGETLSR = 21593
    TIOCSERGETMULTI = 21594
    TIOCSERGSTRUCT = 21592
    TIOCSERGWILD = 21588
    TIOCSERSETMULTI = 21595
    TIOCSERSWILD = 21589
    TIOCSER_TEMT = 1
    TIOCSETD = 21539
    TIOCSLCKTRMIOS = 21591
    TIOCSPGRP = 21520
    TIOCSSERIAL = 21535
    TIOCSSOFTCAR = 21530
    TIOCSTI = 21522
    TIOCSWINSZ = 21524
    TOSTOP = 256
    VDISCARD = 13
    VEOF = 4
    VEOL = 11
    VERASE = 2
    VINTR = 0
    VKILL = 3
    VLNEXT = 15
    VMIN = 6
    VQUIT = 1
    VREPRINT = 12
    VSTART = 8
    VSTOP = 9
    VSUSP = 10
    VSWTC = 7
    VSWTCH = 7
    VTDLY = 16384
    VTIME = 5
    VWERASE = 14
    XCASE = 4
    XTABS = 6144
  end

  def screen_width
    default = (::ENV['COLUMNS'] || 80).to_i
  begin
    data = [0, 0, 0, 0].pack("SSSS")
    if ioctl(Terminal::Constants::TIOCGWINSZ, data) >= 0 then
      rows, cols, xpixels, ypixels = data.unpack("SSSS")
      if cols >= 0 then cols else default_width end
    else
      default
    end
  rescue Exception
    default
  end
  end
  
  def screen_height
    default = (::ENV['LINES'] || 22).to_i
  begin
    data = [0, 0, 0, 0].pack("SSSS")
    if ioctl(Terminal::Constants::TIOCGWINSZ, data) >= 0 then
      rows, cols, xpixels, ypixels = data.unpack("SSSS")
      if rows >= 0 then rows else default end
    else
      default
    end
  rescue Exception
    default
  end
  end
  
  def screen_size
    default_width  = (::ENV['COLUMNS'] || 80).to_i
    default_height = (::ENV['LINES'] || 22).to_i
    size = [default_width, default_height]
    
  begin
    data = [0, 0, 0, 0].pack("SSSS")
    if ioctl(Terminal::Constants::TIOCGWINSZ, data) >= 0 then
      rows, cols, xpixels, ypixels = data.unpack("SSSS")
      size[1] = rows if rows >= 0
      size[0] = cols if cols >= 0
    end
  rescue Exception
  end
  
    return size
  end


end


module ConsoleUtils
  #include ANSICode
  module_function
  def screen_width(out=STDERR)
    default_width = ENV['COLUMNS'] || 80
    begin
      tiocgwinsz = 0x5413
      data = [0, 0, 0, 0].pack("SSSS")
      if out.ioctl(tiocgwinsz, data) >= 0 then
        rows, cols, xpixels, ypixels = data.unpack("SSSS")
        if cols >= 0 then cols else default_width end
      else
        default_width
      end
    rescue Exception
      default_width
    end
  end
  
  def screen_height(out=STDERR)
    default_height = ENV['LINES'] || 22
    begin
      tiocgwinsz = 0x5413
      data = [0, 0, 0, 0].pack("SSSS")
      if out.ioctl(tiocgwinsz, data) >= 0 then
        rows, cols, xpixels, ypixels = data.unpack("SSSS")
        if rows >= 0 then rows else default_height end
      else
        default_height
      end
    rescue Exception
      default_height
    end
  end
  
  def screen_size(out = STDERR)
    default_size = [ENV['COLUMNS'] || 80, ENV['LINES'] || 22]
    begin
      tiocgwinsz = 0x5413
      data = [0, 0, 0, 0].pack("SSSS")
      if out.ioctl(tiocgwinsz, data) >= 0 then
        rows, cols, xpixels, ypixels = data.unpack("SSSS")
        default_size[1] = rows if rows >= 0
        default_size[0] = cols if cols >= 0
        return default_size
      else
        return default_size
      end
    rescue Exception
      return default_size
    end
  end
end
include ConsoleUtils
end