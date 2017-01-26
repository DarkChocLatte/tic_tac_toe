require_relative '../lib/player.rb'


describe Player do

  before do
    @player = Player.new
  end

  it "A new instance of Player is intiialized with a name" do
    expect(@player.name).to eq("player who must not be named")
  end
end



# it "A new instance of Game is intiialized with 2 players" do
#   allow(player1).to receive(:name).and_return("player who must not be named")
#   expect(@game.player1.name).to eq("player who must not be named")
# end
