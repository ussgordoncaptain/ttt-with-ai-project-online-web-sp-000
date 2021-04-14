class Game
  def initialize(player_1=Player.new("X"),player_2=Player.new("O"), board=Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end
  attr_accessor :player_1, :player_2, :board
  def WIN_COMBINATIONS =[[0,1,2],[0,3,6],[0,4,8],[1,4,7][6,4,2],[2,5,8], [3,4,5], [6,7,8]]
  end
  def current_player
   turns= @board.turn_count
   if turns%2 == 1 
     return "X"
    else 
      return "O"
    end
  end
  def won?
    board_state=@board.cells
    WIN_COMBINATIONS.each do |arr|
      if board_state[arr][0] == board_state[arr][1] && board_state[arr][1]==board_state[arr][2]
          return true
      end
    end
  end
end