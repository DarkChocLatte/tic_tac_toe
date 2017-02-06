class Judge

  attr_reader :game

  def is_winner?(board)
    return true if won_by_row(board)
    # return true if won_by_column
    # return true if won_by_diagonal
    false
  end


  private

  def won_by_row(board)
    return true if board.show.each{|row| if row.same_values? == true then return true end}
    false
  end

  def won_by_column
  end

  def won_by_diagonal
  end

  def same_values?
  end


end

class Array
  def same_values?
    self.uniq.length == 1
  end
end
