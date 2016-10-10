class Player

  def initialize(name)
    @name = name
    @lives = 3
  end

  attr_reader(:name, :lives)

  def wrong_answer
    @lives = @lives - 1
  end

end
