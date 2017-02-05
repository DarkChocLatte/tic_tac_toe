class Game
  attr_reader :player1, :player2, :board
  attr_accessor :turn

  def initialize(player_klass1, player_klass2, board_klass, cell_klass)
    @player1 = player_klass1.new
    @player2 = player_klass2.new
    @turn    = "#{@player1.name}'s turn"
    @board   = board_klass.new(cell_klass)
  end

  def take_turn(column, row)
    determine_input_from_turn
    change_turn
    @board.board_place_mark(column, row, @input)
  end



  private

  def determine_input_from_turn
    if @turn == "#{@player1.name}'s turn" then @input = 'X' end
    if @turn == "#{@player2.name}'s turn" then @input = 'O' end
  end

  def change_turn
    if @turn == "#{@player1.name}'s turn" then @turn = "#{@player2.name}'s turn" end
    if @turn == "#{@player2.name}'s turn" then @turn = "#{@player1.name}'s turn" end
  end
end
