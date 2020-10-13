require './player'
require './game'

player1 = Player.new("Bob")
player2 = Player.new("Josh")

game = Game.new(player1, player2)
game.start