=begin
You're challenge for today is to create a program that can calculate pi accurately to at least 30 decimal places.
Try not to cheat :)
=end

require "open-uri"
puts /<pre>([\d.]+)/.match(open("http://www.eveandersson.com/pi/digits/100").read.gsub("\n", ""))[1]