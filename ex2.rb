song = "Welcome to the jungle, we have ___ and ___"
puts song
puts "What should be the first word?"
first_word = gets.chomp
puts "What should be the second word?"
second_word = gets.chomp

full_song = "Welcome to the jungle, we have " + first_word + " and " + second_word
puts "The completed verse is '#{full_song}'"
puts "Your song has #{full_song.length} characters in it including spaces"
puts "Your song reversed sounds funny, but here it is '#{full_song.reverse}'"