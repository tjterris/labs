require 'pry'
require './tttPlayer'
require './tttBoard'
# require './tttTests'

class Game 

  def start_menu
    
    puts "Will this be human vs human (1), computer vs human (2) or computer vs computer (3)?"
    puts "Enter a selection:"
    @selection = gets.chomp.to_i

      
      until @selection == 1 || @selection == 2 || @selection == 3                         #=~ /^[1-3]$/
      puts "Please make a valid selection."
      @selection = gets.chomp.to_i
      end

  end


  def computer_or_human

    if @selection == 1 
      human_vs_human
    elsif @selection == 2
      human_vs_computer
    else 
      computer_vs_computer
    end
  end


  def human_vs_human    
    
    p1 = Player.new
    p1.pick_letter

    board = Board.new
    showboard(board)

    current_player = current_player == 'X' ? 'O' : 'X'
    puts "Please pick a numbered square: "
    result = gets.chomp
    available = board.select { |x| x.is_a? Fixnum }
  
    until result =~ /^#{available}$/
    puts "Sorry, please pick a numbered square: "
    result = gets.chomp
    end
    result.to_i - 1
  
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

game = Game.new
game.start_menu

end
binding.pry