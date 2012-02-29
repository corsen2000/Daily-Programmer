=begin
A helper utility to list daily programmer files according to our naming scheme
Pass in the category you want (easy, intermediate, hard)
=end

numbers = Dir.glob("#{ARGV[0]}*.rb").map { |file| /([\d]+)/.match(file)[0].to_i }.sort
gaps = (numbers.first..numbers.last).to_a - numbers
puts "What we have: " + numbers.join(",")
puts "        Gaps: " + gaps.join(",")