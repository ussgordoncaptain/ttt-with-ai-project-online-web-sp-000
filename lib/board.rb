class Board 
  def initialize 
    reset!
  end
  attr_accessor :cells
  def reset!
    @cells = [" ", " ", " "," " , " ", " ", " ", " ", " "]
  end
  
  def display
    ii=0 
    while(true)
    puts " #{@cells[ii]} | #{@cells[ii+1]} | #{@cells[ii+2]} "
    if (ii == 6)
      break 
    end
    puts "-----------"
    ii+=3
   end
  end 
  def position(input)
    index= input.to_i-1
    return index 
  end
  def update(input, player)
    move= position(input)
    value_player = player.token()
    @cells(move) = value_player
  end 
  def full?
    @cells.each do |cell|
      if cell == " "
        return false
      end 
    end
    return true
  end
  def turn_count 
    turns=10
    @cells.each do |cell|
      if cell == " "
        turns -=1
      end
    end
    return turns 
  end
  def taken?(input)
    move = position[input]
    if @cells[move] == " "
      return false
    else
      return true
    end
  end
  def valid_move?(input)
    move= position[input]
    if move == -1 
      return false
    elsif @cells[move]==" "
     return true
   else
     return false
    end
  end
end