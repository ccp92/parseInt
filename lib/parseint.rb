# frozen_string_literal: true

class ParseInt
  def initialize
    @SINGLE_DIGITS = {
      'one' => 1,
      'two' => 2,
      'three' => 3,
      'four' => 4,
      'five' => 5,
      'six' => 6,
      'seven' => 7,
      'eight' => 8,
      'nine' => 9,
      'zero' => 0,
    }.freeze
  end
  def parse_int(string)
    return @SINGLE_DIGITS[string]
  end
end
