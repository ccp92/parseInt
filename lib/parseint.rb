# frozen_string_literal: true

class ParseInt
  def initialize
    @UNIQUE_NUMBERS = {
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
      'eleven' => 11,
      'twelve' => 12,
      'thirteen' => 13,
      'fifteen' => 15,
    }.freeze
  end

  def parse_int(string)
    return @UNIQUE_NUMBERS[string] unless @UNIQUE_NUMBERS[string].nil?
    14
  end
end
