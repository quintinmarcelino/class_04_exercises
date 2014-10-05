#Hello Jack or Jill!
#Change the previous program such that only the users Jack or Jill are greeted 
#with their names.

puts"What's Your Name?"
name = gets.chomp
if name == "Jack" || name == "Jill"
	puts "Hello, #{name}!"
else
	puts "Sorry. I only care about Jack or Jill"
end
