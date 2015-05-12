require 'pry'

board = [0,1,2,3,4,5,6,7,8]

WINS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6] ]

def printboard(board)
			
			
       print board[0], '|', board[1], '|', board[2]
       puts
       puts "-----"
       print board[3], '|', board[4], '|', board[5] 
       puts
       puts "-----"
       print board[6], '|', board[7], '|', board[8]
       puts
       puts

end

def win?(board)
    
    WINS.any? { |x, y, z| board[x] == board[y] && board[y] == board[z] } #Thanks Brit!
   
    # .any? passes each element of the collection to the given block. 
    # The method returns true if the block ever returns a value other than false or nil.
end
   
def draw?(board)
    
    board.all? { |x| x.is_a? String }     #Thanks Brit!
    
end

def play(board)

    turn_count = 0
    next_player = "x"

    until win?(board) || draw?(board)

    printboard(board)

    puts "Player #{next_player}, select a position (0-8)" 
    input = gets.chomp 
    available = board.select { |x| x.is_a? Fixnum }  #Thanks Brit!
      
      until input =~ /^#{available}$/
      
        puts "Sorry, please pick a numbered square: "
        input = gets.chomp
      
      end
      
        input.to_i 

      if turn_count % 2 == 0
            board[input.to_i] = "x"
            next_player = "o"
        else
            board[input.to_i] = "o"
            next_player = "x"
      end
    
    turn_count += 1   

end
    end
    
play(board)