class GameController
  
  attr_reader :game

  def initialize(game_Klass)
    @game = game_Klass.new
  end
end
