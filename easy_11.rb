require 'date'

if (ARGV.length == 3)
	day = ARGV[0].to_i
	month = ARGV[1].to_i
	year = ARGV[2].to_i
	
	date = Date.new(year, month, day)
	puts Date::DAYNAMES[date.wday]
end
