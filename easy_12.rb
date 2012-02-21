=begin
Write a small program that can take a string:
"hi!"
and print all the possible permutations of the string:
"hi!"
"ih!"
"!hi"
"h!i"
"i!h"
etc...
=end

puts "Enter a string and I will give you the permutations"
input_string = gets.chomp

permutations = []

input_string.length.times do |n|
	permutations += input_string.chars.to_a.permutation(n + 1).map(&:join)
end

puts permutations