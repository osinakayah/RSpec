class Board

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    if @player_one.get_index == 1
      @current_player = @player_one
    else
      @current_player = @player_two
    end
    @winner = nil
    @is_game_ended = false
    @positions = [1,2,3,4,5,6,7,8,9]
  end

  def positions(positions)
    @positions = positions
  end
  def current_player
    @current_player
  end

  def start_game
    while @is_game_ended == false
      display_board
      position = @current_player.play
      if position > @positions.length
        puts "Please "+@current_player.get_name+" play a valid position"
        next
      end
      draw_move_on_board(position)
      if is_winning_move
        @is_game_ended = true
        puts "The Winner is "+@current_player.get_name
      end
      switch_turn
    end
  end

  def display_board
    @positions.each_with_index do |item, index|
      print item.to_s+"     "
      if (index+1) % 3 == 0
        print "\n"
      end
    end
  end

  def is_winning_move
    case true
      when (@positions[0] == 'O' && @positions[1] == 'O' && @positions[2] == 'O') || (@positions[0] == 'X' && @positions[1] == 'X' && @positions[2] == 'X')
        return true
      when (@positions[3] == 'O' && @positions[4] == '0' && @positions[5] == 'O') || (@positions[3] == 'X' && @positions[4] == 'X' && @positions[5] == 'X')
        return true
      when (@positions[6] == 'O' && @positions[7] == 'O' && @positions[8] == 'O') || (@positions[6] == 'X' && @positions[7] == 'X' && @positions[8] == 'X')
        return true
      when (@positions[0] == 'O' && @positions[3] == 'O' && @positions[6] == 'O') || (@positions[0] == 'X' && @positions[3] == 'X' && @positions[6] == 'X')
        return true
      when (@positions[1] == 'O' && @positions[4] == 'O' && @positions[7] == 'O') || (@positions[1] == 'X' && @positions[4] == 'X' && @positions[7] == 'X')
        return true
      when (@positions[2] == 'O' && @positions[5] == 'O' && @positions[8] == 'O') || (@positions[2] == 'X' && @positions[5] == 'X' && @positions[8] == 'X')
        return true
      when (@positions[0] == 'O' && @positions[4] == 'O' && @positions[8] == 'O') || (@positions[0] == 'X' && @positions[4] == 'X' && @positions[8] == 'X')
        return true
      when (@positions[2] == 'O' && @positions[4] == 'O' && @positions[6] == 'O') || (@positions[2] == 'X' && @positions[4] == 'X' && @positions[6] == 'X')
        return true
    end
    return false
  end

  def draw_move_on_board(position)
    if @positions[position -1] == 'X' || @positions[position -1] == 'O'
      raise "Can not play on the same spot twice"
    end
    if @current_player.get_index == @player_one.get_index
      @positions[position -1] = 'X'
    elsif @current_player.get_index == @player_two.get_index
      @positions[position -1] = 'O'
    end
  end

  def switch_turn
    if @current_player.get_index == @player_one.get_index
      @current_player = @player_two
    elsif @current_player.get_index == @player_two.get_index
      @current_player = @player_one
    end
  end

end