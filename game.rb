class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    while @player1.player_life > 0 && @player2.player_life > 0 do

      @player1.play
      puts "P1: #{@player1.player_life}/3 vs P2: #{@player2.player_life}/3"
    
      if @player1.player_life == 0
        break
      end
    
      puts "----- NEW TURN -----"
    
      @player2.play
      puts "P1: #{@player1.player_life}/3 vs P2: #{@player2.player_life}/3"
    
      if @player2.player_life == 0
        break
      end
    
      puts "----- NEW TURN -----"
    
    end
    
    if @player1.player_life > @player2.player_life
      puts "Player 1 wins with a score of #{@player1.player_life}/3"
    else
      puts "Player 2 wins with a score of #{@player2.player_life}/3"
    end
    
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end


end