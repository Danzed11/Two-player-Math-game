require "./questions.rb"
require "./players.rb"
require"./game.rb"

Instance = Game.new
until Instance.player1.lives == 0 || Instance.player2.lives == 0
  Instance.start_round
end
Instance.declare_loser