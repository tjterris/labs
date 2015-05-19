require 'pry'
require './tttGame'
require './tttBoard'
# require './tttTests'

class Player



  def pick_letter
    
    puts "Player 1 please choose 'X' or 'O'"
    letter = gets.chomp.downcase
    
    until letter =~ /^[xo]$/i # try running this w/out the i on end to see what happens
    
    puts "You can only choose 'X' or 'O'..."
    letter = gets.chomp
    
    end
    
    letter.upcase

  end

# def choose_move(board)
#   show_board(board)
#   puts "Please pick a numbered square: "
#   result = gets.chomp
#   available = board.select { |x| x.is_a? Fixnum }
#   # until available.include?(result.to_i)
#   #   puts "Sorry, pick again:"
#   #   result = gets.chomp
#   # end
#   # until result =~ /[1-9]/ && available.include?(result)
#   #   puts "Sorry, pick again: "
#   #   result = gets.chomp
#   # end
#   until result =~ /^#{available}$/
#     puts "Sorry, please pick a numbered square: "
#     result = gets.chomp
#   end
#   result.to_i - 1
# end


  



  # def pick_letter_vs_computer

  #   pick_letter
  
  #   puts "Good luck human.  You'll be playing the computer."
  
  #   puts "You move first."
  # end










end

# human = Human.new 
# human.pick_letter

binding.pry