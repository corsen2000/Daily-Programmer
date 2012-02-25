=begin
Welcome to cipher day!
write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.
for extra credit, add a "decrypt" function to your program!
=end
if (ARGV.length == 2)
	input = ARGV[0]
	offset = ARGV[1].to_i
	output = Array.new(0)

	input.each_byte do |c|
		if (c >= 65 and c <= 90)
			d = c+offset
			until (d >= 65 and d <= 90)
				d = d - 26
			end
		elsif (c >= 97 and c <= 122)
			d = c + offset
			until (d >= 97 and d <= 122)
				d = d - 26
			end
		else
			d = c
		end

		output.push d.chr
	end

	puts output.join
end
