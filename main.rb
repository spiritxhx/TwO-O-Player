require './player.rb'
require './Question.rb'
require './Game.rb'

player_1 = Player.new()
player_2 = Player.new()


# puts "#{player_1.score}/3"
# puts question_1.question
# puts question_1.answer

game = Game.new()
game.game_start(player_1, player_2)
