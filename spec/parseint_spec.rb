# frozen_string_literal: true

require 'parseint'

describe ParseInt do
  let(:parseint) { ParseInt.new }
  describe '.parse_int' do
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
        end
        context 'built numbers' do
          it 'can convert fourteen to 14' do
            convert('fourteen', 14)
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
