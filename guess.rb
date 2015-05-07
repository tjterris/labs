num = rand(100)

loop do
  puts "Guess a number between 0 and 100: "
  guess = gets.chomp.to_i
  if num == guess
    puts "You got it right"
    break
  elsif num > guess
    puts "Your guess was too low"
  else
    puts "Your guess was too high"
  end
end


