class Scrabble

  def initialize(word)
    @word = word.split('')
    @one = ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't']
    @two = ['d', 'g']
    @three = ['b', 'c', 'm', 'p']
    @four = ['f', 'h', 'v', 'w', 'y']
    @five = ['k']
    @eight = ['j', 'x']
    @ten = ['q', 'z']
    @score = 0
  end

  def score
      @word.each do |letter|
        if @one.include?(letter)
          @score += 1
        elsif @two.include?(letter)
          @score += 2
        elsif @three.include?(letter)
          @score += 3
        elsif @four.include?(letter)
          @score += 4
        elsif @five.include?(letter)
          @score += 5
        elsif @eight.include?(letter)
          @score += 8
        elsif @ten.include?(letter)
          @score += 10
        end
      end
      @score
  end

end
