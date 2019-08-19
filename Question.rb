class Question
  attr_reader :question, :answer

  def initialize
    adder1 = rand(10)
    adder2 = rand(10)
    @question = "What does #{adder1} plus #{adder2} equal? "
    @answer = adder1 + adder2
  end

  def ask_player(i, player1, player2)
    puts "----- New TURN -----"
    puts "Player #{i%2 +1}: #{question} "
    ans = gets.chomp()
    if (ans.to_i == answer)
      puts "Player #{i%2 +1}: YES! You are correct. "
    else
      puts "Player #{i%2 +1}: Seriously? No! "
      if (i%2==0)
        player1.remove_life
      else
        player2.remove_life
      end
    end
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3 "
  end

end