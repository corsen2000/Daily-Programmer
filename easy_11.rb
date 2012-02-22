=begin
The program should take three arguments. The first will be a day, the second will be month, and the third will be year. 
Then, your program should compute the day of the week that date will fall on.
=end

require 'date'

if (ARGV.length == 3)
	day = ARGV[0].to_i
	month = ARGV[1].to_i
	year = ARGV[2].to_i
	
	date = Date.new(year, month, day)
	puts Date::DAYNAMES[date.wday]
end
