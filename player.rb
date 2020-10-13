class Player
  attr_accessor :player_life, :name

  def initialize(name)
    @name = name
    @player_life = 3
  end

  def play
    @questions = {
      'What does 5 plus 3 equal?' => '8',
      'What does 2 plus 1 equal?' => '3',
      'What does 9 multiply by 2 eqaul?' => '18',
      'What does 10 divide by 5 equal?' => '2',
      'What does 101 minus 100 equal?' => '1'
    }

    random_num = rand(0...4)
  
    puts "Player #{self.name}: #{@questions.keys[random_num]}"
    text = gets.chomp
  
    if text == @questions.values[random_num]
      puts "Yes! You are correct!"
      puts "P1: #{@player_life}/3 vs P2: #{@player_life}/3"
    else 
      puts "Seriously?? No!!"
      @player_life -= 1
      puts "P1: #{@player_life}/3 vs P2: #{@player_life}/3"
    end
  end

end