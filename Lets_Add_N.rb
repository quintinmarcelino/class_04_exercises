#Let’s add to N
#Write a program that asks the user for a number n and prints the sum of the 
#numbers 1 to n


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
