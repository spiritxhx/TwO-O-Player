class Question
  attr_reader :question, :answer

  def initialize
    adder1 = rand(10)
    adder2 = rand(10)
    @question = "What does #{adder1} plus #{adder2} equal? "
    @answer = adder1 + adder2
  end

  def ask_player(i)
    puts "----- New TURN -----"
    puts "Player #{i%2 +1}: #{question} "
    ans = gets.chomp()
    if (ans.to_i == answer)
      return true
    else
      return false
    end
  end

end