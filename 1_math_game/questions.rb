class Questions

  attr_reader :correct_answer

  def initialize
    @a = Random.rand(1..50)
    @b = Random.rand(1..50)
    @correct_answer = 0
    random_questions
  end

  def random_questions
    question_builder = Random.rand(1..3) 
  case question_builder
  when 1
    addition_question
  when 2
    subtraction_question
  when 3
    multiplication_question
  end
end

  def addition_question
    puts "What is #{@a} + #{@b}?"
    @correct_answer = @a + @b
  end

  def subtraction_question
    puts "What is #{@a} - #{@b}?"
    @correct_answer = @a - @b
  end

  def multiplication_question
    puts "What is #{@a} X #{@b}?"
    @correct_answer = @a * @b
  end
end
