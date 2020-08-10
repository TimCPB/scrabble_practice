require 'scrabble.rb'

describe Scrabble do
  it "score method returns 0 on an empty string" do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq(0)
  end

  it 'score method returns 1 for the letter a' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq(1)
  end
   it 'score method returns 4 for the letter f' do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq(4)
   end
   it "score method returns 6 for the word 'street'" do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to eq(6)
   end
   it "score method returns 22 for the word 'quirky'" do
    scrabble = Scrabble.new('quirky')
    expect(scrabble.score).to eq(22)
   end
   it "copes with characters of different cases" do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to eq(41)
   end
end
