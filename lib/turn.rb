def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  index = index - 1
  return index
end


def valid_move?(the_board, index)
  
  def position_taken?(board, ind)
    if board[ind] == " " || board[ind] == "" || board[ind] == nil
      return false
    else
      return true
    end
  end
  
  def valid_position?(number) 
    if number.between?(0, 8)
      return true
    else
      return false
    end
  end
  
  if (position_taken?(the_board, index)) == false && (valid_position?(index)) == true
    return true
  else
    return false
  end
  
end

def move (array, index, value = "X")
  array[index] = value
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(the_board, the_index) == true
    move (array, index, value = "x")
    display(board)
  else
    turn(board)
  end
end