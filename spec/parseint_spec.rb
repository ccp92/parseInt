# frozen_string_literal: true

require 'parseint'

describe ParseInt do
  let(:parseint) { ParseInt.new }
  context 'single digit conversions' do
    it 'can convert one to 1' do
      expect(parseint.parse_int('one')).to eq(1)
    end

    it 'can convert two to 2' do
      expect(parseint.parse_int('two')).to eq(2)
    end

    it 'can convert three into 3' do
      expect(parseint.parse_int('three')).to eq(3)
    end

    it 'can convert four into 4' do
      expect(parseint.parse_int('four')).to eq(4)
    end

    it 'can convert five into 5' do
      expect(parseint.parse_int('five')).to eq(5)
    end

    it 'can convert six into 6' do
      expect(parseint.parse_int('six')).to eq(6)
    end

    it 'can convert seven into 7' do
      expect(parseint.parse_int('seven')).to eq(7)
    end

    it 'can convert eight into 8' do
      expect(parseint.parse_int('eight')).to eq(8)
    end

    it 'can convert nine into 9' do
      expect(parseint.parse_int('nine')).to eq(9)
    end

    it 'can convert zero into 0' do
      expect(parseint.parse_int('zero')).to eq(0)
    end
  end
end
