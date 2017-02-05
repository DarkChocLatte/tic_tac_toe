describe "When a game is created" do

  before do
    @game    = Game.new(Player,Player,Board,Cell)
  end

  it "A player may see the board" do
    expect(@game.board.show).to be_an_instance_of(Array)
  end

  it "A player may take a turn" do
    expect(@game.board.board_place_mark(2,3,'X'))
  end

  it "A player may not place a mark on the board where a mark has already been placed" do
    @game.board.board_place_mark(2,3,'X')
    expect{@game.board.board_place_mark(2,3,'O')}.to raise_error("Cannot place mark there: Please place the mark somewhere else")
  end
end
