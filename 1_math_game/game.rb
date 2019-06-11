require "./questions.rb"
require "./players.rb"

class Game 
  attr_accessor :player1, :player2

  def initialize
    @round = 1
    @turn_handling = 0
    puts "Player 1, who are you?"
    player_name = gets.chomp
    @player1 = Player.new player_name
    puts "Player 2, who are you?"
    player_name = gets.chomp
    @player2 = Player.new player_name

    puts "\n#{@player1.name} you have #{@player1.lives} chances left"
    puts "\n#{@player2.name} you have #{@player2.lives} chances left"
    end

  def start_round
    
    case @turn_handling
    when 0
      current_player = @player1
    when 1 
      current_player = @player2
    end

    puts "\n Round #{@round.to_s}!"
    puts "#{current_player.name} it's your turn..."
    new_question = Questions.new
    answer = gets.chomp.to_i
    if answer == new_question.correct_answer
      puts "\nCORRECT #{current_player.name}!"
      @round += 1
      @turn_handling = (@turn_handling + 1) % 2
    else
      puts "\nWRONG!"
      current_player.lose_life
      @round += 1
      @turn_handling = (@turn_handling + 1) % 2
    end
  end

  def declare_loser
    case @turn_handling
    when 0
      puts "\n#{@player1.name} has won the game, #{@player2.name} owes you a beer"
    when 1
      puts "\n#{@player2.name} has won the game, #{@player1.name} owes you a beer"
      end 
    end
  end
 
