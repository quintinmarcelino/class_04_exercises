#Hello ___!
#Write a program that asks the user for her name and greets them with her 
#name.
=begin
puts"What's Your Name?"
name = gets.chomp
puts "Hello! #{name}"
=end

#Hello Jack or Jill!
#Change the previous program such that only the users Jack or Jill are greeted 
#with their names.
=begin
puts"What's Your Name?"
name = gets.chomp
if name == "Jack" || name == "Jill"
	puts "Hello! #{name}"
else
	puts "Sorry. I only care about Jack or Jill"
end
=end

#Let’s add to N
#Write a program that asks the user for a number n and prints the sum of the 
#numbers 1 to n

=begin
puts "Pick a number!\nI'll Print the Sum from 1 to your Number!"
input_number = gets.chomp.to_i
puts "Your Number is #{input_number}"
sum = 0
x = 0
while x <= input_number
	sum += x
	x = x +1
end
puts "Your sum is #{sum}!"
=end

#Add or Multiply?
#Write a program that asks the user for a number n and gives him the possibility 
#to choose between computing the sum and computing the product of 1,...,n.

=begin
puts "OK, pick a number!"
input_number = gets.chomp.to_i

puts"Awesome. Now we can do one of two things!"
puts "Do you want to MULTIPLY all of the numbers between 1 and your number?\nOr do you want to ADD all of the numbers between 1 and your numbers?"
math_answer = gets.chomp.upcase
if math_answer == "ADD"
	sum = 0
	x = 0
	while x <= input_number
		sum += x
		x = x + 1
	end
	
	puts "Your sum is #{sum}!"

elsif math_answer == "MULTIPLY"
	product = 1
	y = 1
	while y <= input_number
		product *= y
		y = y + 1
	end
	puts "Your answer is #{product}!"

end
=end

#Secret Number
#Write a guessing game where the user has to guess a secret number. After 
#every guess the program tells the user whether his number was too large or 
#too small. At the end the number
#should get three tries.


=begin
#The totally sloppy way to do it!

#This is the SECRET NUMBER! OOOOOH!
secret_number = rand(1..25)

#Here's My Little Intro
puts "It's A Secret to Everyone! The hot new game!\n============================================"
puts "This is a Guessing Game. You have 3 Guesses.\n============================================"
puts "Guess a number from 1 to 25. I'll tell you if you're right!"

#This is the First User Guess
guess_01 = gets.chomp.to_i

if guess_01 == secret_number
	puts "Whoa. You got it on the first try. Awesome!\n============================="
	puts "Number of Tries: 1"
else
	#Here, the user gets shot number 2
		if guess_01 > secret_number
			puts "Nope. Too High. Give it another guess!"
			guess_02 = gets.chomp.to_i
		else
			puts "Nope. Too Low. Give it another guess!"
			guess_02 = gets.chomp.to_i
				if guess_02 == secret_number
					puts "Second try. Not too bad!\n============================="
					puts "Number of tries: 2"
				else
					#They didn't get it on 2, so here's their last chance.
					if guess_02 > secret_number
						puts "Strike 2. Too High! Last chance!"
					else
						puts "Strike 2. Too Low! Last chance!"
					end

					guess_03 = gets.chomp.to_i
						if guess_03 == secret_number
							puts "Bingo Bango! You got it! On the last shot!\n============================="
							puts "Number of tries: 3"
						else
							puts "Sorry. You're out of tries. The secret number was #{secret_number}!"
						end
					end
			
		end
end
=end

=begin
#Here's where I define the Secret Number and set the Number of Guesses Variable
secret_number = rand(1..25)
num_guess = 0

#Here's my incredibly wordy and dumb message to start the game.
puts "It's A Secret to Everyone! The hot new game!\n============================================"
puts "This is a Guessing Game. You have 3 Guesses.\n============================================"
puts "Guess a number from 1 to 25. I'll tell you if you're right!"

#This is the core DO loop that runs the game. 
loop do
	num_guess += 1
		#This IF statement ends the game after the third guess. It's up here because
		#it will run this code before asking for a 4th guess. It was the last piece of
		#code I put in, though.
		if num_guess == 4
			puts "Sorry. You're out of guesses. YOU LOSE!"
			break
		end

	#Here's where the player enters his/her guess.
	puts "Enter a Guess!"
	guess = gets.chomp.to_i

	#This If statement runs the guessing loop and spits out responses.
	if guess != secret_number
		response = if guess > secret_number
						"Nuh-uh.Too High!"
					elsif guess < secret_number
						"Nope. Too low!"
					end
					puts response
		else
			puts "Whoa, nice one!"
			puts "You got it on guess ##{num_guess} "
			break
		end
	end
=end

=begin
Sparkle Magic
Write a function that takes a list of strings an prints them, one per line, in a 
rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"] gets 
printed as:

**********
* Hello *
* World *
* in *
* a *
* frame *
**********
=end

=begin
puts "SPARKLE MAGIC\n============="
puts "I can put your words into a sparkly box!\n==============================="
puts "Enter your words!"
user_words = gets.chomp
word_array = []
word_array.push(user_words.each_line('')) 

#puts user_words.each_line('') {|s| p s }
puts user_words[1]

#puts "You said #{user_words}"
=end

#Printing out modulus numbers
#Make a program that prints the numbers from 1 to 75, but for multiples of 3, 
#instead of printing the number, print “Bewd”. For multiples of 5, print “Rocks”. 
#For multiples of 3 and 5, print “BewdRocks”.

=begin
number = 1
	while number <= 75
		number = number + 1
			if number % 3 == 0 && number % 5 == 0
				puts "BewdRocks"
			elsif number % 3 == 0
				puts "Bewd"
			elsif number % 5 == 0
				puts "Rocks"
			else
				puts number
			end
	end
=end

#Weather stats
#Make a program that prints reads the text file, weather.dat, a file containing 
#weather data for each day of Boston for June 2013 and outputs the day 
#number (column 1) with the smallest temperature spread (Max temperature is 
#column two. Min temperature is column three).

#weather_data = File.read(C:\Users\Quintin\BEWD Course\class_04\weather.dat)
#puts weather.dat
