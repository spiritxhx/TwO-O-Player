require './Question.rb'

class Game


  def game_start(player1, player2)
    i=0
    while (player1.score>0 && player2.score>0) do
      question = Question.new()
      puts "----- New TURN -----"
      puts "Player #{i%2 +1}: #{question.question} "
      ans = gets.chomp()
      puts ans
      if (ans.to_i == question.answer)
        puts "Player #{i%2 +1}: YES! You are correct. "
      else
        puts "Player #{i%2 +1}: Seriously? No! "
        if (i%2==0)
          player1.score=player1.score-1
        else
          player2.score=player2.score-1
        end
      end
      
      puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3 "
      i = i+1
    end
    if (player1.score==0)
      puts "Player 2 wins with a score of #{player2.score}/3 "
    elsif (player2.score==0)
      puts "Player 1 wins with a score of #{player1.score}/3 "
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end
end
