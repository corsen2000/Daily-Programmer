=begin
create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:
your name is (blank), you are (blank) years old, and your username is (blank)
for extra credit, have the program log this information in a file to be accessed later.
=end

print "What is your name? : "
name = gets.chomp

print "What is your age? : "
age = gets.chomp

print "What is your reddit username? : "
reddit_name = gets.chomp

message = "Your name is #{name}, you are #{age} years old, and your username is #{reddit_name}"

puts message

File.open "easy_1_log.txt", "a" do |file|
	file.puts message
end