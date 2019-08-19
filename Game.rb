require './Question.rb'

class Game


  def game_start(player1, player2)
    i=0
    while (!self.game_over?(player1, player2)) do
      question = Question.new()
      if question.ask_player(i)
        puts "Player #{i%2 +1}: YES! You are correct. "
      else
        puts "Player #{i%2 +1}: Seriously? No! "
        if (i%2==0)
          player1.remove_life
        else
          player2.remove_life
        end
      end   
      i = i+1
      puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3 "
    end   
  end

  def game_over?(player1, player2)
    if (player1.dead?)
      return ["Player 2", player2.score]
    elsif (player2.dead?)
      return ["Player 1", player1.score]
    else
      return false
    end
  end
  
  def game_over(message)
    if message
      puts "#{message[0]} wins with a score of #{message[1]}/3 "
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end

end
