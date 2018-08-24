# frozen_string_literal: true

class ParseInt
  def parse_int(string)
    return 1 if string == 'one'
    return 2 if string == 'two'
    return 3 if string == 'three'
    return 4 if string == 'four'
    return 5 if string == 'five'
    return 6 if string == 'six'
    return 7 if string == 'seven'
    return 8 if string == 'eight'
    return 9 if string == 'nine'
    0
  end
end
