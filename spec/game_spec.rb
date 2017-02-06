require_relative '../lib/game.rb'
require_relative '../lib/player.rb'


describe Game do

  let(:player1_class) { double( :Player, new: player1)}
  let(:player1){ double( :player)}

  let(:player2_class) { double( :Player, new: player2)}
  let(:player2){ double( :player)}

  let(:cell_class) { double( :Cell, new: cell)}
  let(:cell){ double( :cell)}

  let(:board_class) { double( :Board, new: board)}
  let(:board){ double( :board)}

  let(:judge_class) { double( :Judge, new: judge)}
  let(:judge){ double( :judge)}

  before do
    allow(player1).to receive(:name).and_return("Joe Kurr")
    allow(player2).to receive(:name).and_return("Bruce Wayne")
    @game = Game.new(player1_class, player2_class, board_class,cell_class,judge_class)
    @game.start_game(@game.player1)
  end

  describe "#initialize" do

    it "A new instance of Game is intiialized with 2 players" do
      expect(@game.player1).to eq(player1)
      expect(@game.player2).to eq(player2)
    end

    it "A new instance of Game is intiated with the turn set to 'player 1's turn'" do
      expect(@game.turn).to eq("Joe Kurr's turn")
    end

    it "A new instance of Game is initiated with a board" do
      expect(@game.board).to eq(board)
    end
  end


end
