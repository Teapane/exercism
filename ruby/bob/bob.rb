
class Bob
  def 
    if nonsense?(saying)
      'Fine. Be that way.'
    elsif yelling?(saying)
      "Woah, chill out!"
    elsif question?(saying)
      'Sure.'
    else
      "Whatever."
    end
  end
end


class Drivle
  def nonsense(saying)
    saying == ""
  end
end
class Intense
  def yelling?(saying)
    saying == saying.upcase
  end
end
class inquire
  def question?(saying)
    saying.end_with?("?")
  end
end






