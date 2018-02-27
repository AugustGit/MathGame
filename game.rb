class Game
  def initialize(p1, p2)
    @a = 0
    @b = 0
    @p1 = p1
    @p2 = p2
    @current_player = @p1
  end

  def turn
    question
    answer
    # switch_player
  end

  def question
    @a = 1 + rand(20)
    @b = 1 + rand(20)
    puts "#{@current_player.name} what is #{@a} + #{@b} ?"
  end

#result = some_condition ? something : something_else

  def answer
    useranswer = gets.chomp
    result = useranswer.to_i === (@a + @b) ? "#{@current_player.name} Good Job!" : (@current_player.points -= 1) && "#{@current_player.name} Incorrect, Sorry it was #{(@a + @b)}, you now have #{@current_player.points}/3!"
    puts result
  end

   def switch_player
    result =  @current_player == @p1 ? @current_player == @p2 : @p1
    puts result
   end

  # def winner
  # end
end
