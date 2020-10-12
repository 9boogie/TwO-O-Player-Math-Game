@questions = hash = {
  'What does 5 plus 3 equal?' => '8',
  'What does 2 plus 1 equal?' => '3',
  'What does 9 multiply by 2 eqaul?' => '18',
  'What does 10 divide by 5 equal?' => '2',
  'What does 101 minus 100 equal?' => '1'
}

def player1
  random_num = rand(0...4)

  puts "Player 1: #{@questions.keys[random_num]}"
  text1 = gets.chomp

  if text1 == @questions.values[random_num]
    puts "Yes! You are correct!"
  else 
    puts "Seriously?? No!!"
  end
end

def player2
  random_num = rand(0...4)

  puts "Player 2: #{@questions.keys[random_num]}"
  text1 = gets.chomp

  if text1 == @questions.values[random_num]
    puts "Yes! You are correct!"
  else 
    puts "Seriously?? No!!"
  end
end

player1

player2

=begin
puts "Player 1: #{questions.keys[0]}"
text1 = gets.chomp

if text1 == '8'
  puts "Yes! You are correct!"
else 
  puts "Seriously?? No!!"
end

puts "----- NEW TURN -----"

#puts "Enter second text:"
#text2 = gets.chomp
#puts text2
=end