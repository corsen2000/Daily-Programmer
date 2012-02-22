=begin
Create a program that will take any string and write it out to a text file, reversed.
input: "hello!"
output: "!olleh"
=end

puts "Gimme a string to reverse.  Output will be in intermediate_13.txt"
File.open("intermediate_13.txt", "w") { |file| file.puts gets.chomp.reverse }