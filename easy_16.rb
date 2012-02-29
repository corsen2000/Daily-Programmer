=begin
Write a function that takes two strings and removes from the first string any character that appears in the second string. 
For instance, if the first string is “Daily Programmer” and the second string is “aeiou ” the result is “DlyPrgrmmr”.
note: the second string has [space] so the space between "Daily Programmer" is removed
=end

def takeout(target, string)
	target.delete string	
end

puts takeout("Daily Programmer", "aeiou ")