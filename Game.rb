require './Question.rb'

class Game

  def initialize
    i=0
  end


  def game_start(player1, player2)
    while player1.score && player2.score do
      question = Question.new()
      puts "----- New TURN -----"
      puts "Player 1: #{question.question} "
    end
  end


  def game_over

  end
end
