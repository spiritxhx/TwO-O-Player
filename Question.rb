class Question
  attr_reader :question, :answer

  def initialize
    adder1 = rand(10)
    adder2 = rand(10)
    @question = "What does #{adder1} plus #{adder2} equal? "
    @answer = adder1 + adder2
  end
end