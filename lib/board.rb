class Board

  attr_reader :show

  def initialize(cell_Klass)
    @show = Array.new(9){cell_Klass.new}
  end







end
