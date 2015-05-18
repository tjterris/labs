require 'pry'
require './tttGame'
require './tttBoard'
require './tttTests'

class Player

attr_accessor :human1
attr_accessor :human2
attr_accessor :computer

  def initialize(human1, human2, computer) # What parameters should I be passing here?
  
    human1 = @human1
    human2 = @human2
    computer = @computer
  
  end

  def pick_letter
    
    puts "Player 1 please choose 'X' or 'O'"
    letter = gets.chomp.downcase
    
    until letter =~ /^[xo]$/i # try running this w/out the i on end to see what happens
    
    puts "You can only choose 'X' or 'O'..."
    letter = gets.chomp
    
    end
    
    letter.upcase

  end

  def pick_letter_vs_computer

    pick_letter
  
    puts "Good luck human.  You'll be playing the computer."
  
    puts "You move first."
  end

  def pick_a_move










end

# human = Human.new 
# human.pick_letter

binding.pry