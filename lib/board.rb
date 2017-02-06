class Board

  attr_reader :show

  def initialize(cell_klass)
    @show = [[cell_klass.new,cell_klass.new,cell_klass.new],[cell_klass.new,cell_klass.new,cell_klass.new],[cell_klass.new,cell_klass.new,cell_klass.new]]
  end

  def board_place_mark(row, column, input)
    raise 'Cannot place mark there: Please place the mark somewhere else' if (self.show[row-1][column-1]).state != ''
    return  (self.show[row.to_i-1][column.to_i-1]).circled if input == 'O'
    return  (self.show[row.to_i-1][column.to_i-1]).crossed if input == 'X'
  end





end
