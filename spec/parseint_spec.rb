# frozen_string_literal: true

require 'parseint'

describe ParseInt do
  let(:parseint) { ParseInt.new }
  describe '.parse_int' do
    context 'edge cases' do
      it 'can convert twenty-three to 23' do
        convert('twenty-three', 23)
      end
    end
    context 'single digit conversions' do
      it 'can convert to 1' do
        convert('one', 1)
      end

      it 'can convert to 2' do
        convert('two', 2)
      end

      it 'can convert to 3' do
        convert('three', 3)
      end

      it 'can convert to 4' do
        convert('four', 4)
      end

      it 'can convert to 5' do
        convert('five', 5)
      end

      it 'can convert to 6' do
        convert('six', 6)
      end

      it 'can convert to 7' do
        convert('seven', 7)
      end

      it 'can convert to 8' do
        convert('eight', 8)
      end

      it 'can convert to 9' do
        convert('nine', 9)
      end

      it 'can convert to 0' do
        convert('zero', 0)
      end
    end

    context 'double digit conversions' do
      context '11 to 19' do
        context 'unique numbers' do
          it 'can convert eleven to 11' do
            convert('eleven', 11)
          end

          it 'can convert twelve to 12' do
            convert('twelve', 12)
          end

          it 'can convert thirteen to 13' do
            convert('thirteen', 13)
          end

          it 'can convert fifteen to 15' do
            convert('fifteen', 15)
          end

          it 'can convert eighteen to 18' do
            convert('eighteen', 18)
          end
        end

        context 'non-unique numbers' do
          it 'can convert fourteen to 14' do
            convert('fourteen', 14)
          end

          it 'can convert sixteen to 16' do
            convert('sixteen', 16)
          end

          it 'can convert seventeen to 17' do
            convert('seventeen', 17)
          end

          it 'can convert nineteen to 19' do
            convert('nineteen', 19)
          end
        end
      end

      context '20 to 29' do
        context 'unique numbers' do
          it 'converts twenty to 20' do
            convert('twenty', 20)
          end
        end

        context 'non-unique numbers' do
          it 'converts twentyone to 21' do
            convert('twentyone', 21)
          end

          it 'converts twentytwo to 22' do
            convert('twentytwo', 22)
          end

          it 'converts twentythree to 23' do
            convert('twentythree', 23)
          end

          it 'converts twentyfour to 24' do
            convert('twentyfour', 24)
          end

          it 'converts twentyfive to 25' do
            convert('twentyfive', 25)
          end

          it 'converts twentysix to 26' do
            convert('twentysix', 26)
          end

          it 'converts twentyseven to 27' do
            convert('twentyseven', 27)
          end

          it 'converts twentyeight to 28' do
            convert('twentyeight', 28)
          end

          it 'converts twentynine to 29' do
            convert('twentynine', 29)
          end
        end
      end

      context '30 to 39' do
        context 'unique numbers' do
          it 'converts thirty to 30' do
            convert('thirty', 30)
          end
        end

        context 'non-unique numbers' do
          it 'converts thirtyone to 31' do
            convert('thirtyone', 31)
          end

          it 'converts thirtytwo to 32' do
            convert('thirtytwo', 32)
          end

          it 'converts twentythree to 23' do
            convert('thirtythree', 33)
          end

          it 'converts twentyfour to 24' do
            convert('thirtyfour', 34)
          end

          it 'converts twentyfive to 25' do
            convert('thirtyfive', 35)
          end

          it 'converts twentysix to 26' do
            convert('thirtysix', 36)
          end

          it 'converts twentyseven to 27' do
            convert('thirtyseven', 37)
          end

          it 'converts twentyeight to 28' do
            convert('thirtyeight', 38)
          end

          it 'converts twentynine to 29' do
            convert('thirtynine', 39)
          end
        end
      end
    end
  end

  private

  def convert(input, output)
    expect(parseint.parse_int(input)).to eq(output)
  end
end
