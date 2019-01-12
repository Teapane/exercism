class Year
  def leap?
    (divisble_by_four? && !century?) || divisible_by_four_hundred?
  end

  private

  def divisble_by_four?(number)
    (number % 4) == 0
  end

  def century?
    (number % 100) == 0
  end

  def divisible_by_four_hundred?
    (number % 400) == 0
  end

end

