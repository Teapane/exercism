class PhoneNumber

  def initialize(number)
    @number = sanitized(number)
  end

  def number
    @number
  end

  def area_code
    number[0..2]
  end

  def central_office_code
    number[3..5]
  end

  def line_number
    number[6..9]
  end

  def to_s
    "(#{area_code}) #{central_office_code}-#{line_number}"
  end

  private

  def sanitized(number)
    number = number.gsub(/[^0-9]/, "")
    invalid_replacement(number)
  end

  def invalid_replacement(number)
    if valid?(number)
      number[/(\d{10})\z/, 1]
    else
      "0" * 10
    end
  end

  def valid?(number)
    return true if number.length == 10
    return true if number.length == 11 && number.start_with?("1")
    false
  end
end
