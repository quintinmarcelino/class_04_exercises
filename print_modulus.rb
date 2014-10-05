#Printing out modulus numbers
#Make a program that prints the numbers from 1 to 75, but for multiples of 3, 
#instead of printing the number, print “Bewd”. For multiples of 5, print “Rocks”. 
#For multiples of 3 and 5, print “BewdRocks”.

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
