# frozen_string_literal: true

class Board
  def initialize
    @board = [['', '', ''],
              ['', '', ''],
              ['', '', '']]
  end

  def place_marker(row, column, marker)
    if @board[row.to_i - 1][column.to_i - 1].empty?
      @board[row.to_i - 1][column.to_i - 1] = marker
      puts ''
      display_board
      true
    else
      puts 'That spot has already been filled. Go again'
      false
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
