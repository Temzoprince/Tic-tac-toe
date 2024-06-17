require './player'
require './board'
class Game
  def initialize
    @player1 = Player.new('O')
    @player2 = Player.new('X')
    @board = Board.new
  end

  def game_start
    @board.clear_board
  end

  def game_flow
    exit = false
    while exit == false
      player1_populate_board
      exit = game_end?
      break if exit

      player2_populate_board

      exit = game_end?
    end
  end

  def player1_populate_board
    puts 'Player 1 - mark a spot'
    exit = false
    while exit == false
      p1_input = gets.chomp.split(',')
      puts p1_input[0].to_i
      puts p1_input[1].to_i
      exit = @board.place_marker(p1_input[0], p1_input[1], @player1.marker)
    end
  end

  def player2_populate_board
    puts 'Player 2 - mark a spot'
    exit = false
    while exit == false
      p2_input = gets.chomp.split(',')
      puts p2_input[0].to_i
      puts p2_input[1].to_i
      exit = @board.place_marker(p2_input[0], p2_input[1], @player2.marker)
    end
  end

  def player1_won?
    if @board.column_full?(@player1.marker) ||
       @board.row_full?(@player1.marker) ||
       @board.diagonal_full?(@player1.marker)
      puts 'Player 1 has won!'
      return true
    end
    false
  end

  def player2_won?
    if @board.column_full?(@player2.marker) ||
       @board.row_full?(@player2.marker) ||
       @board.diagonal_full?(@player2.marker)
      puts 'Player 2 has won!'
      return true
    end
    false
  end

  def draw?
    if @board.board_full?
      puts 'Draw!'
      return true
    end
    false
  end

  def game_end?
    return true if player1_won?

    return true if player2_won?

    return true if draw?

    false
  end
end
