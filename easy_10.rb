def isValidPhoneNumber(input)
	matches = /^[0-9]{3}[-\.]{0,1}[0-9]{3}[-\.]{0,1}[0-9]{4}$/.match(input)
	
	if (matches == nil)
		return false
	end

	return true	
end

inputToTest = ARGV[0]
puts isValidPhoneNumber(inputToTest)
