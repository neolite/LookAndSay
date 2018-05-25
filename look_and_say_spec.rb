require 'rspec'
require './look_and_say'

RSpec.describe LookAndSay do
  it 'initial returns 1' do
    seq = LookAndSay.new

    expect(seq.get).to eq(1)
  end
  it 'test 3rd item of sequence' do
    seq = LookAndSay.new
    seq.get
    seq.get
    expect(seq.get).to eq(21)
  end
  it 'expect correct next item in sequence' do
    seq = LookAndSay.new(312_211)
    seq.get
    expect(seq.get).to eq(13_112_221)
  end
end
