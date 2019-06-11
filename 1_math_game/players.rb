class Player
  attr_accessor :name, :lives
  
  def initialize name
    @name = name
    @lives = 3
  end

  def lose_life
    @lives = @lives - 1
    puts "\n#{@name} lost a life."
      if @lives > 1 
        puts "#{@name} has #{@lives} chances left."
      elsif @lives == 1
        puts "#{@name} has #{@lives} chance left..."
      end 
    end
end
