class Board
  attr_accessor :board
  def initialize(arr)
    self.board = arr.to_a
  end

  def set_board(player, position)
    if board[position-1].is_a?(Integer) && position > 0 && position <10
      board[position - 1] = player == 1 ? 'X' : '●'
      return true
    else
      puts "Invalid value"
      return false
    end
  end

  def draw_board
    puts "|#{board[6]}||#{board[7]}||#{board[8]}|"
    puts "|#{board[3]}||#{board[4]}||#{board[5]}|"
    puts "|#{board[0]}||#{board[1]}||#{board[2]}|"
  end


end


class Win

  def initialize
    @combinations = [[0,1,2], [3,4,5], [6,7,8],[0,3,6], [1,4,7], [2,5,8], [6,4,2], [8,4,0]]

  end

  def check_board(board)
    @combinations.each { |n| return false if board.board[n[0]] == board.board[n[1]] && board.board[n[1]] == board.board[n[2]]}
    return true

  end
end