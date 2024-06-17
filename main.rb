# frozen_string_literal: true

require_relative 'gameclear'
game = Game.new

puts 'Welcome to Tic-Tac-Toe'
puts 'Player 1 is O, Player 2 is X'
puts 'The first to get 3 markers (horizontally, vertically or diagonally) wins'
puts 'The sqaures on the left column starting from top left are 1,1 ... 2,1 ... 3,1 '
puts 'Enter the position you want to fill with a space e.g. x,y'
game.game_start
game.game_flow
