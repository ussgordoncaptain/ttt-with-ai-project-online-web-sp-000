module Players
class Player
  def initialize(token) 
    @token=token 
  end
  attr_reader :token
end
class Human < Player
  def move(board)
    puts "input a move (1-9)"
    choice = gets.chomp
    return choice
  end
end
end