class Game
  attr_reader :player1, :player2, :board
  attr_accessor :turn

  def initialize(player_klass1, player_klass2, board_klass, cell_klass, judge_klass)
    @player1 = player_klass1.new
    @player2 = player_klass2.new
    @board   = board_klass.new(cell_klass)
    @judge   = judge_klass.new
    @input   = 'X'
  end

  def start_game(player)
    "Welcome, to tictactoe" + player.name + "will be the first to make a move!"
    self.turn = player.name + "'s turn"
  end

  def take_turn(row, column)
    determine_input_from_turn
    change_turn
    @board.board_place_mark(row, column, @input)
    game_over?
  end


  private

  def determine_input_from_turn
    if self.turn == "#{self.player1.name}'s turn" then @input = 'X' end
    if self.turn == "#{self.player2.name}'s turn" then @input = 'O' end
  end

  def change_turn
    return self.turn = "#{self.player2.name}'s turn" if self.turn == "#{self.player1.name}'s turn"
    return self.turn = "#{self.player1.name}'s turn" if self.turn == "#{self.player2.name}'s turn"
  end

  def game_over?
    return "#{self.player1} is the Winner!" if @judge.is_winner?(@board)
  end
end
