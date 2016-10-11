class Question

  attr_reader(:first, :second, :answer)

  def initialize
    @first = 1 + rand(20)
    @second = 1 + rand(20)
    @answer = @first + @second
  end

end

