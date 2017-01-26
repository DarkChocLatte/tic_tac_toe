require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

describe Game do

  let(:player1_class) { double( :Player, new: player1)}
  let(:player1){ double( :player)}

  let(:player2_class) { double( :Player, new: player2)}
  let(:player2){ double( :player)}

  before do
    @game = Game.new(player1_class, player2_class)
  end

  it "A new instance of Game is intiialized with 2 players" do
    expect(@game.player1).to eq(player1)
    expect(@game.player2).to eq(player2)
  end
end
