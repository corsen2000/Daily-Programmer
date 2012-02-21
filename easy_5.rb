=begin
Your challenge for today is to create a program which is password protected, and wont open unless the correct user and password is given.
For extra credit, have the user and password in a seperate .txt file.
for even more extra credit, break into your own program :)
=end

def secret_calculator
	puts "You're in! Now give me some information"
	puts "What is your age : "
	age = gets.chomp.to_i
	puts "You're lucky number is #{age * 3}"
end

user = nil
password = nil

File.open("easy_5_settings.txt", "r") do |f|
	user = f.gets.chomp
	password = f.gets.chomp
end

puts "What is the username? : "
input_user = gets.chomp
puts "What is the password? : "
input_password = gets.chomp

if user == input_user && password == input_password
	secret_calculator
else
	puts "Wrong!"
end