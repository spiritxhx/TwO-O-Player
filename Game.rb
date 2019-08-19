require './Question.rb'

class Game


  def game_start(player1, player2)
    i=0
    while player1.score && player2.score do
      question = Question.new()
      puts "----- New TURN -----"
      puts "Player #{i%2 +1}: #{question.question} "
      i = i+1
      ans = gets.chomp()
      puts ans
      if (ans.to_i == question.answer)
        puts "Player #{i%2 +1}: YES! You are correct. "
      else
        puts "Player #{i%2 +1}: Seriously? No! "
        
      end
    end
  end


  def game_over

  end
end
