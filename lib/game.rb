class Game
  attr_reader :player1, :player2

  def initialize(player_klass1, player_klass2)
    @player1 = player_klass1.new
    @player2 = player_klass2.new
  end





end
