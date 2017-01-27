class Cell
  attr_reader :state

  def initialize
    @state = ''
  end

  def crossed
    @state = 'X'
  end

  def circled
    @state = 'O'
  end





end
