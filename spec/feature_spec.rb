require './lib/judge.rb'

describe "When a game is created" do

  before do
    @game    = Game.new(Player,Player,Board,Cell,Judge)
    @game.player2.name = "Robocop"
    @game.player1.name = "Terminator"
    @game.start_game(@game.player1)
  end

  it "A player may see the board" do
    expect(@game.board.show).to be_an_instance_of(Array)
  end

  it "A player may take a turn" do
    expect(@game.take_turn(2,3))
  end

  it "A player may not place a mark on the board where a mark has already been placed" do
    @game.take_turn(2,3)
    expect{@game.take_turn(2,3)}.to raise_error("Cannot place mark there: Please place the mark somewhere else")
  end

  it "A player should be determined the winner if they get 3 crosses in a row" do

    @game.take_turn(1,1)
    @game.take_turn(2,1)


    @game.take_turn(1,2)
    @game.take_turn(2,2)

    expect(@game.take_turn(1,3)).to eq("#{@game.player1} is the Winner!")
  end
end
