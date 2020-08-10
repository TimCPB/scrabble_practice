require 'scrabble.rb'

describe Scrabble do
  it "score method returns 0 on an empty string" do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq(0)
  end
end