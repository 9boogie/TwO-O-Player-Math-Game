class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    puts "#{@player1.name} vs #{@player2.name}"
    puts "#{@player1.player_life} vs #{@player2.player_life}"
  end


end