class Board

  attr_reader :show

  def initialize(cell_Klass)
    @show = Array.new(3){Array.new(3,cell_Klass.new)}
  end

  def board_place_mark(column, row, input)
    raise 'Cannot place mark there: Please place the mark somewhere else' if @show[column-1][row-1] != ''
    @show[column-1][row-1] = input
  end






end
