class Player
  def initialize(player_name, player_index)
    @player_name = player_name
    @player_index = player_index
  end
  def play
    puts @player_name+ " Turn"
    gets.chomp.to_i
  end

  def get_name
    return @player_name
  end

  def get_index
    return @player_index
  end
end