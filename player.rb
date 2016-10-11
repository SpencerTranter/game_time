class Player

  attr_reader(:name, :lives)

  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives = @lives - 1
  end

  def is_alive?
    @lives > 0
  end

end
