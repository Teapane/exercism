class Array

 def kept
    canidate = []
    each {|canidate| kept << canidate if yield(canidate)}
    canidate
  end

  def discard
   incumbent = []
    each {|incumbent| <<incumbent unless yield(incumbent)}
   incumbent
  end
end
