#Add or Multiply?
#Write a program that asks the user for a number n and gives him the possibility 
#to choose between computing the sum and computing the product of 1,...,n.


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
