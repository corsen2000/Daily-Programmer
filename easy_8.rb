=begin
write a program that will print the song "99 bottles of beer on the wall".
for extra credit, do not allow the program to print each loop on a new line.
=end

def pluralize_bottle(num)
	if num > 1
		"#{num} bottles"
	elsif num == 1
		"#{num} bottle"
	else
		"no more bottles"
	end
end

def sing(num = 99)
	puts "#{pluralize_bottle(num).capitalize} of been on the wall, #{pluralize_bottle num} of beer."
	if num >= 1
		puts "Take one down and pass it around, #{pluralize_bottle num - 1} of beer on the wall."
		sing num -	 1
	else
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end

sing