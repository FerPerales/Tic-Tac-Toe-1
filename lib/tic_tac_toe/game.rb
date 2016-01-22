module TicTacToe
  class Game

    def initialize(number,board)
      @number = number
      @status = true
      @chip = null
      @first_gamer = true
      @board = board
    end

    def initialize_grid(board)
      grid = Array.new(board) { Array.new(board) }
    end

    def winner
      return "x" if winning_line("x")
      return "o" if winning_line("o")
      nil
    end

    def winning_line(mark)
      return mark if grid.any? {|row| row.all? {|value| value == mark}}
      return mark if grid.transpose.any? {|column| column.all? {|value| value == mark}}
      return mark if grid[0][0] == mark && grid[1][1] == mark && grid[2][2] == mark
      return mark if grid[0][2] == mark && grid[1][1] == mark && grid[2][0] == mark
      nil
    end

    def first_gamer
      if @first_gamer?
        @first_gamer = false
        true
      else
        @first_gamer = false
        false
      end
    end

    def chip_value
      if @status?
        @chip = "x"
        @status = false
      elsif @chip == "x"
        @chip = "o"
      else
        @chip = "x"
      end
    end

  end
end
