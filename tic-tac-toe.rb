
board = [0,1,2,3,4,5,6,7,8]
     
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
    
    iswin = false
    
			wins.each do |win| 
  		if board[win[0]]==board[win[1]] && board[win[1]]==board[win[2]]  
     iswin = board[win[0]]    
     	break   
   		end      
			end 
			end  

def play(board)

    turn_count = 0
    next_player = "x"

     while true
     	printboard(board)

    	
      puts "Player #{next_player}, select a position (0-8)" 
      input = gets.chomp.to_i # Does input need to be an integer?  Check to see if this is necessary
 				
 				choices = (0..8).to_a
 				until choices.include?(input)             ## WORKS w/ .to_i method, but only w/ .to_i after gets.chomp     
 					puts 'please make a valid choice'
 					input = gets.chomp.to_i                 ##WORKS w/o .to_i method
 			                   
 				end
       
       if turn_count % 2 == 0
       			board[input] = "x"
       			next_player = "o"
       	else
       		  board[input] = "o"
       		  next_player = "x"
       	end
       turn_count += 1	
       printboard(board)

      


 
end
end

play(board)
win?(board)