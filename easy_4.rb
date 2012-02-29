=begin
You're challenge for today is to create a random password generator!
For extra credit, allow the user to specify the amount of passwords to generate.
For even more extra credit, allow the user to specify the length of the strings he wants to generate!
=end

ALLOWED = ("a".."z").to_a + ("A".."Z").to_a

def new_password(length)
	pass = ""
	length.times { pass << ALLOWED[rand(0...ALLOWED.length)] }
	pass
end

puts "How many passwords would you like?"
number = gets.to_i
puts "What length should these passwords be?"
length = gets.to_i

passwords = []
number.times do 
	passwords << new_password(length)
end

puts passwords.join(" :: ")