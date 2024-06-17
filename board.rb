# frozen_string_literal: true

class Board
  def initialize
    @board = [['', '', ''],
              ['', '', ''],
              ['', '', '']]
  end

  def place_marker(row, column, marker)
    if @board[row - 1][column - 1].empty?
      @board[row - 1][column - 1] = marker
    else
      puts 'That spot has already been filled. Go again'
    end
  end

  def board_full?
    return false if @board.any? do |row|
      row.any? { |square| square == '' }
    end
    true
  end

  def row_full?(marker)
    @board.any? do |row|
      row.all? do |square|
        square == marker
      end
    end
  end

  def column_full?(marker)
    return true if @board[0][0] == marker && @board[1][0] == marker && @board[2][0] == marker

    return true if @board[0][1] == marker && @board[1][1] == marker && @board[2][1] == marker

    return true if @board[0][2] == marker && @board[1][2] == marker && @board[2][2] == marker

    false
  end

  def diagonal_full?(marker)
    return true if @board[0][0] == marker && @board[1][1] == marker && @board[2][2] == marker

    return true if @board[0][2] == marker && @board[1][1] == marker && @board[2][0] == marker

    false
  end

  def clear_board
    @board.each do |row|
      row.map! { |_value| '' }
    end
  end

  def display_board
    p @board[0]
    p @board[1]
    p @board[2]
  end
end

board = Board.new
board.display_board
board.place_marker(2, 2, 'X')
puts ''
board.display_board
board.place_marker(2, 2, 'O')
puts ''
board.display_board
board.place_marker(3, 2, 'X')
puts ''
board.display_board
board.place_marker(1, 2, 'X')
puts ''
board.display_board
puts ''
puts 'Is a row full?'
puts board.row_full?('X')
puts ''
puts 'Is a column full?'
puts board.column_full?('X')

puts ''
puts 'Is the board full?'
puts board.board_full?

# board.place_marker(1, 1, 'X')
# board.place_marker(3, 3, 'X')
# puts ''
# board.display_board
# puts 'Is a diagonal full?'
# puts board.diagonal_full?('X')

# board.place_marker(2, 1, 'X')
# board.place_marker(2, 3, 'X')
# puts ''
# board.display_board
# puts ''
# puts 'Is a row full?'
# puts board.row_full?('X')

# board.place_marker(1, 1, 'X')
# board.place_marker(1, 3, 'X')
# board.place_marker(3, 1, 'X')
# board.place_marker(3, 3, 'X')
# puts ''
# board.display_board
# puts ''
# puts 'Is the board full?'
# puts board.board_full?

# board.clear_board
# puts ''
# board.display_board
