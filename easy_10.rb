def isValidPhoneNumber(input)
	!!/^[0-9]{3}[-\.]{0,1}[0-9]{3}[-\.]{0,1}[0-9]{4}$/.match(input)
end

inputToTest = ARGV[0]
puts isValidPhoneNumber(inputToTest)
