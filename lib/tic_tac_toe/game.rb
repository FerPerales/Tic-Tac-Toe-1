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
      x = 1
      for i in 0..grid.count-1
        for j in 0..grid.count-1
          grid[i][j] = x
          x+=1
          j+=1
        end
        i+=1
      end
    end

    def winner
      return "x" if winning_line("x")
      return "o" if winning_line("o")
      return "draw" if draw?
      nil
    end

    def winning_line(mark)
      return mark if grid.any? {|row| row.all? {|value| value == mark}}
      return mark if grid.transpose.any? {|column| column.all? {|value| value == mark}}
      return mark if grid[0][0] == mark && grid[1][1] == mark && grid[2][2] == mark
      return mark if grid[0][2] == mark && grid[1][1] == mark && grid[2][0] == mark
      nil
    end

    def draw
      @new_grid = grid
      @new_grid.flatten!
      @new_grid2 = @new_grid.select { |i| i !="x" && i !="o" }
      return false if new_grid2.count > 0
      return true if new_grid2.count = 0
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

    def set_chip(number)
      @no_set_chip = true
      for i in 0..grid.count-1
        for j in 0..grid.count-1
          if grid[i][j] == number
            @no_set_chip = false
          end
          j+=1
        end
        i+=1
      end
      return false if @no_set_chip == true
    end

  end
end
