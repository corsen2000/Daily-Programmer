=begin
Your challenge today is to write a program that can find the amount of anagrams within a .txt file. 
For example, "snap" would be an anagram of "pans", and "skate" would be an anagram of "stake".
=end

require "set"

dict = Set.new
File.open("words", "r") do |f|
	f.each do |line|
		dict.add line.chomp
	end
end

def combos(word, totaler = [])
	if word.length <= 1
		totaler << word
	else
		word.each_char do |c|
			other_letters = word.sub(c, "")
			other_combos = combos(other_letters)
			other_combos.each do |com|
				totaler <<  (c + com)
			end
		end
	end
	totaler	
end

puts "Enter a word and I will find the anagrams:"
word = gets.chomp

words = combos(word).select do |word|
	dict.include? word
end
words.delete(word)

puts "The anagrams are:"
puts words
