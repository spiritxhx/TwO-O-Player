require './player.rb'
require './Question.rb'
require './Game.rb'

player_1 = Player.new()
player_2 = Player.new()


game = Game.new()
game.game_start(player_1, player_2)
game.game_over(game.game_over?(player_1, player_2))
