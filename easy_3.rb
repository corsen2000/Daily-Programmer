=begin
Welcome to cipher day!
write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.
for extra credit, add a "decrypt" function to your program!
=end

UPPERS = ("A".."Z").to_a
LOWERS = ("a".."z").to_a

if (ARGV.length >= 1)
	input = ARGV[0]
	offset = (ARGV[1] || 1).to_i
	output = []

	input.each_char do |c|
		key = UPPERS.include?(c) ? UPPERS :
			  LOWERS.include?(c) ? LOWERS : nil
		output << (key ? key[((c.bytes.first - key.first.bytes.first) + offset) % key.length] : c).chr
	end
	puts output.join
end