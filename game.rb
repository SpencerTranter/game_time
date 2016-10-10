require_relative 'turn'
require_relative 'player'

class Game

  def initialize(player1, player2)
    @turns = 0
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def start
    puts 'Starting game'
    while (@player1.lives != 0) && (@player2.lives != 0) do
      @turns += 1
      if @turns % 2 === 0
        turn = Turn.new(@player2)
      else
        turn = Turn.new(@player1)
      end
      turn.print_turn
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    if @player1.lives === 0
      puts "#{@player2.name} wins with #{@player2.lives} remaining lives!"
    else
      puts "#{@player1.name} wins with #{@player1.lives} remaining lives!"
    end
    puts '---- GAME OVER ----'

  end

end

game = Game.new('Spencer', 'Anthony')
game.start