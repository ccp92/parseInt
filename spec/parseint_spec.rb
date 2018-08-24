# frozen_string_literal: true

require 'parseint'

describe ParseInt do
  let(:parseint) { ParseInt.new }
  it 'can convert one to 1' do
    expect(parseint.parse_int('one')).to eq(1)
  end
end
