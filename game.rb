require './player'
require './referee'

referee = Referee.new
opponent = Player.new

player_move = gets.chomp
while player_move != "exit"
  puts referee.judge(player_move, opponent.move)
  player_move = gets.chomp
end

puts "GL HF!"
