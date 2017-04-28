require_relative 'player'
class Game
  attr_reader :player1, :player2, :players

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
  end

  def attack
    @players[1].receive_damage
  end

  def switch_turn
    @players.reverse!
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end
end
