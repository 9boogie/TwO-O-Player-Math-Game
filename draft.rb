@questions = hash = {
  'What does 5 plus 3 equal?' => '8',
  'What does 2 plus 1 equal?' => '3',
  'What does 9 multiply by 2 eqaul?' => '18',
  'What does 10 divide by 5 equal?' => '2',
  'What does 101 minus 100 equal?' => '1'
}

@player1_life = 3
@player2_life = 3
@sequence = 0


def player1
  random_num = rand(0...4)

  puts "Player 1: #{@questions.keys[random_num]}"
  text1 = gets.chomp

  if text1 == @questions.values[random_num]
    puts "Yes! You are correct!"
    puts "P1: #{@player1_life}/3 vs P2: #{@player2_life}/3"
  else 
    puts "Seriously?? No!!"
    @player1_life -= 1
    puts "P1: #{@player1_life}/3 vs P2: #{@player2_life}/3"
  end
end

def player2
  random_num = rand(0...4)

  puts "Player 2: #{@questions.keys[random_num]}"
  text1 = gets.chomp

  if text1 == @questions.values[random_num]
    puts "Yes! You are correct!"
    puts "P1: #{@player1_life}/3 vs P2: #{@player2_life}/3"
  else 
    puts "Seriously?? No!!"
    @player2_life -= 1
    puts "P1: #{@player1_life}/3 vs P2: #{@player2_life}/3"
  end
end

while @player1_life > 0 && @player2_life > 0 do
  player1

  if @player1_life == 0
    break
  end

  puts "----- NEW TURN -----"

  player2

  if @player2_life == 0
    break
  end

  puts "----- NEW TURN -----"

end

if @player1_life > @player2_life
  puts "Player 1 wins with a score of #{@player1_life}/3"
else
  puts "Player 2 wins with a score of #{@player2_life}/3"
end

puts "----- GAME OVER -----"
puts "Good bye!"