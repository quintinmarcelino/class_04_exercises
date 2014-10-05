
#Sparkle Magic
#Write a function that takes a list of strings an prints them, one per line, in a 
#rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets 
#printed as:

#**********
#* Hello *
#* World *
#* in *
#* a *
#* frame *
#**********

puts "SPARKLE MAGIC\n============="
puts "I can put your words into a sparkly box!\n==============================="
puts "Enter your words!"
user_words = gets.chomp.split(' ')
word_array = []
word_array.push(user_words)

#puts user_words.each_line('') {|s| p s }

puts word_array[1]

#puts "You said #{user_words}"