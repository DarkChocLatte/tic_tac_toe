class Game
  attr_reader :player1, :player2, :board, :judge
  attr_accessor :turn, :input

  def initialize(player_klass1, player_klass2, board_klass, cell_klass, judge_klass)
    @player1 = player_klass1.new
    @player2 = player_klass2.new
    @board   = board_klass.new(cell_klass)
    @judge   = judge_klass.new
  end

  def start_game(player)
    "Welcome, to tictactoe" + player.name + "will be the first to make a move!"
    self.turn = player.name + "'s turn"
    self.input = "X"
  end

  def take_turn(row, column)
    determine_input_from_turn
    @board.board_place_mark(row, column, @input)
    change_turn
    game_over?
  end


  private

  def determine_input_from_turn
    return self.input = 'X' if self.turn == "#{self.player1.name}'s turn"
    return self.input = 'O' if self.turn == "#{self.player2.name}'s turn"
  end

  def change_turn
    if self.turn == "#{self.player1.name}'s turn"
      return self.turn = "#{self.player2.name}'s turn"
    else self.turn == "#{self.player2.name}'s turn"
      return self.turn = "#{self.player1.name}'s turn"
    end
  end

  def game_over?
    return "#{self.player1.name} is the Winner!" if (@judge.is_winner?(@board) && self.input == "X")
    return "#{self.player2.name} is the Winner!" if (@judge.is_winner?(@board) && self.input == "O")
  end
end
