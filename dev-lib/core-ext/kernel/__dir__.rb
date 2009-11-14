module Kernel

  # Similar to __FILE__ and __LINE__, __DIR__ provides
  # the directory path to the current executing script.
  #
  # CREDIT: Trans

  def __DIR__
    for c in caller
      c =~ /^(.*?):\d+/ and $1 != __FILE__ and return( File.dirname( $1 ) )
    end
    raise( "can't find a caller outside of #{__FILE__}" )
  end

end
