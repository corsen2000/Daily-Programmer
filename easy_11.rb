require 'date'

if (ARGV.length == 3)
	day = ARGV[0].to_i
	month = ARGV[1].to_i
	year = ARGV[2].to_i
	
	date = Date.new(year, month, day)
	wday = date.wday
	
	case wday
	when 0
		puts 'Sunday'
	when 1
		puts 'Monday'
	when 2
		puts 'Tuesday'
	when 3
		puts 'Wednesday'
	when 4
		puts 'Thursday'
	when 5
		puts 'Friday'
	when 6
		puts 'Saturday'
	end
end
