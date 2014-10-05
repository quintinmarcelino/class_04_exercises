#Secret Number
#Write a guessing game where the user has to guess a secret number. After 
#every guess the program tells the user whether his number was too large or 
#too small. At the end the number
#should get three tries.

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
			puts "The Secret Number was #{secret_number}!"
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
