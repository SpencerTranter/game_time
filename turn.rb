require_relative 'question'

class Turn

  def initialize(player)
    @question = Question.new
    @player = player
  end

  def print_turn
    puts '---- NEW TURN ----'
    puts "#{@player.name}: What is #{@question.first} plus #{@question.second} equal?"
    answer = gets.chomp
    if answer.to_i != @question.answer
      @player.wrong_answer
      puts 'Wrong!'
    else
      puts 'Good job!'
    end
  end

end

