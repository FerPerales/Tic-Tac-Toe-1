module TicTacToe
  class Game

    def initialize
      @number = 0
      @board = 0
      @status = true
      @grid = "null"
      @chip = "null"
      @new_grid = "null"
      @first_gamer = true
    end

    def initialize_grid(board)
      @grid = Array.new(board) { Array.new(board) }
      x = 1
      for i in 0..@grid.count-1
        for j in 0..@grid.count-1
          @grid[i][j] = x
          x+=1
          j+=1
        end
        i+=1
      end
      return :true
    end

    def winner
      return "x" if winning_line("x")
      return "o" if winning_line("o")
      return "draw" if draw
      return :false
    end

    def winning_line(mark)
      if @grid.any? {|row| row.all? {|value| value == mark}}
        clean_data
        return mark
      end
      if @grid.transpose.any? {|column| column.all? {|value| value == mark}}
        clean_data
        return mark
      end
        if @grid[0][0] == mark && @grid[1][1] == mark && @grid[2][2] == mark
          clean_data
          return mark
        end
      if @grid[0][2] == mark && @grid[1][1] == mark && @grid[2][0] == mark
        clean_data
        return mark
      end
        nil
    end

    def draw
      @new_grid = @grid
      @new_grid = @new_grid.flatten
      @new_grid2 = @new_grid.select { |i| i !="x" && i !="o" }
      @new_grid2.count <= 0
    end

    def chip_value
      if @status == true
        @status = false
        @chip = "x"
      elsif @chip == "x"
        @chip = "o"
      else
        @chip = "x"
      end
    end

    def set_chip(number)
      @no_set_chip = true
      for i in 0..@grid.count-1
        for j in 0..@grid.count-1
          if @grid[i][j] == number
            @grid[i][j] = @chip
            @no_set_chip = false
          end
          j+=1
        end
       i+=1
      end
      @no_set_chip == false
    end

    def clean_data
      @number = 0
      @board = 0
      @status = false
      @grid = "null"
      @new_grid = "null"
    end

  end
end
