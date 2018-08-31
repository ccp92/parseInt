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
      'eighteen' => 18,
      'twenty' => 20,
      'thirty' => 30,
    }.freeze
  end

  def parse_int(string)
    return @UNIQUE_NUMBERS[string] unless @UNIQUE_NUMBERS[string].nil?
    if string.include?('teen')
      unfrozen_string = string.dup
      unfrozen_string.slice!('teen')
      return "1#{@UNIQUE_NUMBERS[unfrozen_string]}".to_i
    elsif string.include?('twenty')
      unfrozen_string = string.dup
      unfrozen_string.slice!('twenty')
      return "2#{@UNIQUE_NUMBERS[unfrozen_string]}".to_i
    elsif string.include?('thirty')
      unfrozen_string = string.dup
      unfrozen_string.slice!('thirty')
      return "3#{@UNIQUE_NUMBERS[unfrozen_string]}".to_i
    end
  end
end
