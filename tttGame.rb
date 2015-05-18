require 'pry'
require './tttPlayer'
require './tttBoard'
require './tttTests'
binding.pry
class Game 

attr_accessor :human1 
attr_accessor :human2
attr_accessor :computer

# def initialize(selection)
#   @selection = selection
end

  def menu(selection)
    
    puts "Will this be human vs human (1), computer vs human (2) or computer vs computer (3)?"
    puts "Enter a selection:"
    selection = gets.chomp.to_i

      
      until selection == 1 || selection == 2 || selection == 3                         #=~ /^[1-3]$/
      puts "Please make a valid selection."
      selection = gets.chomp.to_i
      end

  end

game = Game.new
game.menu

  def multiplayer_game

    # if @selection == 1 pick_letter
    # else

  end
    
    # gameboard.showboard(board)

    # puts "Please pick a numbered square."
    # square = gets.chomp.to_i
    # available = board.select { |n| n.is_a? Fixnum }
    
    # until square =~ /^#{available}$/
    
    #   puts "Sorry, please pick a square that hasn't been taken."
    #   result = gets.chomp.to_i
    #   result - 1
    
    # end


game.multiplayer_game


binding.pry