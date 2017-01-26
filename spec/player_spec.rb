require_relative '../lib/player.rb'


describe Player do

  before do
    @player = Player.new('Robocop')
  end

  it "A new instance of Player is intiialized with a name" do
    expect(@player.name).to eq('Robocop')
  end
end
