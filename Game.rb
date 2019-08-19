require './Question.rb'

class Game


  def game_start(player1, player2)
    i=0
    while (!player1.dead? && !player2.dead?) do
      question = Question.new()
      question.ask_player(i, player1, player2)   
      i = i+1
    end   
  end
  
  def game_over(player1, player2)
    if (player1.dead?)
      puts "Player 2 wins with a score of #{player2.score}/3 "
    elsif (player2.dead?)
      puts "Player 1 wins with a score of #{player1.score}/3 "
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end
