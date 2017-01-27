class Board

  attr_reader :show

  def initialize(cell_Klass)
    @show = Array.new(3){Array.new(3,cell_Klass.new)}
  end

  def board_place_mark(column, row, input)
    raise 'Cannot place mark there: Please place the mark somewhere else' if (self.show[column-1][row-1]).state != ''
    if input == 'O' then (self.show[column-1][row-1]).circled end
    if input == 'X' then (self.show[column-1][row-1]).crossed end
  end





end
