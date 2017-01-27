require_relative '../lib/cell.rb'

describe Cell do

  before do
    @cell = Cell.new
  end

  it "Cell initializes with a state set to empty string" do
    expect(@cell.state).to eq('')
  end

  it "Cell crossed method should change state to X" do
    @cell.crossed
    expect(@cell.state).to eq('X')
  end

  it "Cell circled method should change state to O" do
    @cell.circled
    expect(@cell.state).to eq('O')
  end
end
