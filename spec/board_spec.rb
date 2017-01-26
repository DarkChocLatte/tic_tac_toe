require_relative '../lib/board.rb'
require_relative '../lib/cell.rb'

describe Board do

  let(:cell_class) { double( :Cell, new: cell)}
  let(:cell){ double( :cell)}

  before do
    @board = Board.new(cell_class)
  end

  it "A newly substantiated board is an instance of Board" do
    expect(@board.show).to be_an_instance_of(Array)
  end

  it "A new instance of board is initialized with 9 boxes" do
    expect(@board.show.length).to eq(9)
  end

  it "A new instance of board is intiialized with a cell" do
    expect(@board.show[0]).to eq(cell)
    expect(@board.show[-1]).to eq(cell)
    expect(@board.show[-3]).to eq(cell)
  end

  it "Board may be shown" do
    expect(@board.show[0]).to eq(cell)
  end
end
