require 'pry'
require './tttPlayer'
require './tttGame'
require './tttTests'

class Board
  
  board = [1,2,3,4,5,6,7,8,9]


  def showboard(board)
  
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

  end

















board = Board.new
board.showboard(board)






end







binding.pry