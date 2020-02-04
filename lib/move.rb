def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, token = "X")
  board[index] = token
end

def get_move
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  input.to_i-1
end

def position_taken?(board, index)
  !(board[index] == " ")
end

def valid_move?(board, index)
  # index is a number, is between 0 and 8 and the position is not taken
  index.is_a?(Integer) && 
  index.between?(0,8) && 
  !position_taken?(board,index)
end