require './player.rb'
require './Question.rb'

player_1 = Player.new()
player_2 = Player.new()

question_1 = Question.new()

puts "#{player_1.score}/3"
puts question_1.question
puts question_1.answer