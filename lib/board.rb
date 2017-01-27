class Board

  attr_reader :show

  def initialize(cell_Klass)
    @show = Array.new(9){cell_Klass.new}
  end

  def board_place_mark(column, row, input)
    raise 'Cannot place mark there: already a mark there' if @show[column-1][row-1] != ''
    @show[column-1][row-1] = input
  end






end
