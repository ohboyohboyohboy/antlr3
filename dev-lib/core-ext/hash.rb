class Hash
  
  def rekey( *args, &block )
    dup.rekey!( *args, &block )
  end
  
  def rekey!( *args )
    if block_given?
      for key in keys
        new_key = yield( key ) and store( new_key, delete( key ) )
      end
    else
      case args.length
      when 2
        old, new = args
        store( new, delete( old ) )
      when 1
        method = args.first
        rekey! { | k | k.send( method ) }
      else
        return enum_for( :rekey! )
      end
    end
    
    return self
  end
  
  def symbolize_keys!
    rekey! { | k | k.to_sym }
  end
  
  def symbolize_keys
    dup.symbolize_keys!
  end
  
  def stringify_keys!
    rekey! { | k | k.to_s }
  end
  
  def stringify_keys
    dup.stringify_keys!
  end
  
  def with_defaults( defaults = {} )
    defaults.symbolize_keys.update( symbolize_keys )
  end
  
end

