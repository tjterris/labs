##test whether a string is a palindrome 
require 'pry'

def palindrome?
  puts "please enter a word and I'll tell you if it's a palindrome"
  input = gets.chomp
  a1 = input.split("") 
  a2 = a1.reverse
  if a1 == a2 
    puts 'palindrome!'
  else
    puts 'not a palindrome!'
  end
end

palindrome?
