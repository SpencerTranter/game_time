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
    while (@player1.is_alive?) && (@player2.is_alive?) do
      @turns += 1
      turn = (@turns %2 === 0) ? Turn.new(@player2) : Turn.new(@player1)
      turn.print_turn
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end

    winning_player = (@player1.is_alive?) ? @player1 : @player2
    puts "#{winning_player.name} wins with #{winning_player.lives} remaining lives!"
    puts '---- GAME OVER ----'

  end

end

game = Game.new('Spencer', 'Anthony')
game.start