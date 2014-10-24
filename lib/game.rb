class Game
  attr_accessor :rows
  attr_accessor :columns
  

  def initialize
    self.rows = 5
    self.columns = 4
    @moves = []
    get_next_move
  end
  
  def moves
    @moves << get_next_move
  end
    
=begin    
        @moves 
    # [5, 6, 1, 3, 5]
    # move_list = [1, 2, 1]
    # column_1 = []
    # column_1 << 'R'
    # column_2 =
      column_4 = 
    for i in array do
      if 1..:columns save into value_column_number
        5 3 1 4
        a b c d 
    1 1 
      end 
  end
=end  
  
  def result
    'the result of a game'
    
      bottom = " _"
    grid = "|"
    rows.times { puts "#{grid}" }
    puts @moves
      #  puts "#{bottom}" * columns
  end
  
  
  private
  
  def get_next_move
    puts "Pick a column to drop your piece into (Please enter a number 1 through #{columns})"
    @next_move = gets
    while !valid_next_move?(@next_move)
      puts "Column is invalid. (Please enter a number 1 through #{columns})"
      @next_move = gets
    end
    @moves << @next_move
    
    puts "The next move is #{@next_move}"
  end
  
  # returns true if the next move is valid 
  # a move is invalid if:
  # 1 - it's not a number
  # 2 - it's out of the acceptable range (negative, zero, greater than the number of columns)
  # 3 - there are already too many checkers in the given column
  def valid_next_move?(input)
    # this handles cases 1 and 2
    input.to_i > 0 && input.to_i <= columns
    
    # TODO: implement case 3
  
  end
  
end
 