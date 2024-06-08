class Board
  def initialize
    @grid = [['', '', ''],
             ['', '', ''],
             ['', '', '']]
  end

  def populate_table(row, column, shape)
    @grid[row - 1][column - 1] = shape if @grid[row - 1][column - 1].empty?
  end

  def clear_table
    @grid.each do |row|
      row.map! { |value| value = '' }
    end
  end

  def display_table
    p @grid[0]
    p @grid[1]
    p @grid[2]
  end
end