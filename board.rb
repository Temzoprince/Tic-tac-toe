# frozen_string_literal: true

class Board
  def initialize
    @grid = [['', '', ''],
             ['', '', ''],
             ['', '', '']]
  end

  def place_marker(row, column, marker)
    if @grid[row - 1][column - 1].empty?
      @grid[row - 1][column - 1] = marker
    else
      puts 'That spot has already been filled. Go again'
    end
  end

  def clear_table
    @grid.each do |row|
      row.map! { |_value| '' }
    end
  end

  def display_table
    p @grid

    p @grid[0]
    p @grid[1]
    p @grid[2]
  end
end

board = Board.new
board.display_table
board.place_marker(2, 2, 'X')
puts ''
board.display_table
board.place_marker(2, 2, 'O')
puts ''
board.display_table
board.place_marker(3, 2, 'X')
puts ''
board.display_table
board.place_marker(1, 2, 'X')
puts ''
board.display_table
board.clear_table
puts ''
board.display_table
