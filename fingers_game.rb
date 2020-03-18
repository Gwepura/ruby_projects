computer_fingers = rand(1)

puts "How many fingers am I holding?"
player_response = gets.chomp
puts "I had #{computer_fingers} held out!"

puts "You guessed right!" if player_response.to_i == computer_fingers