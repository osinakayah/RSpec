require './player.rb'
require './board.rb'

puts "Player One Enter Name"
a = gets.chomp
player1 = Player.new(a, 1)



puts "Player Two Enter Name"
b = gets.chomp
player2 = Player.new(b, 2)



board = Board.new(player1, player2)
board.start_game