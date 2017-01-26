class Game
  attr_reader :player1, :player2, :board
  attr_accessor :turn

  def initialize(player_klass1, player_klass2, board_klass, cell_klass)
    @player1 = player_klass1.new
    @player2 = player_klass2.new
    @turn    = "#{@player1.name}'s turn"
    @board   = board_klass.new(cell_klass.new)
  end


end
