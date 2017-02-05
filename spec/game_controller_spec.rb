require_relative '../lib/game_controller.rb'

describe GameController do

  let(:player1_class) { double( :Player, new: player1)}
  let(:player1){ double( :player)}

  let(:player2_class) { double( :Player, new: player2)}
  let(:player2){ double( :player)}

  let(:cell_class) { double( :Cell, new: cell)}
  let(:cell){ double( :cell)}

  let(:board_class) { double( :Board, new: board)}
  let(:board){ double( :board)}

  let(:game_class) {double( :Game, new: game)}
  let(:game){double(:game)}




  before do
    @game_controller = GameController.new(game_class)
  end

    describe "#initialize" do
      it "should initialize with a game class" do
        expect(@game_controller.game).to eq(game)
      end
    end
end
