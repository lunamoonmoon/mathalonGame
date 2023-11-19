# questions: array of math questions, behaviour is inc score or dec lives

class Questions
  attr_accessor :num_one, :num_two, :answer

  def initialize
    @num_one = rand(100)
    @num_two = rand(100)
    @answer = 0
  end

  def new_question
    puts "What is #{num_one} + #{num_two}?"
    @answer = num_one + num_two
  end

end

