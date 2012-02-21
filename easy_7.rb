=begin
Write a program that can translate Morse code in the format of ...---...
A space and a slash will be placed between words. ..- / --.-
For bonus, add the capability of going from a string to Morse code.
Super-bonus if your program can flash or beep the Morse.
This is your Morse to translate:
.... . .-.. .-.. --- / -.. .- .. .-.. -.-- / .--. .-. --- --. .-. .- -- -- . .-. / --. --- --- -.. / .-.. ..- -.-. -.- / --- -. /
 - .... . / -.-. .... .- .-.. .-.. . -. --. . ... / - --- -.. .- -.--
=end

LETTER_TO_CODES = {
	:a => ".-",
	:b => "-...",
	:c => "-.-.",
	:d => "-..",
	:e => ".",
	:f => "..-.",
	:g => "--.",
	:h => "....",
	:i => "..",
	:j => ".---",
	:k => "-.-",
	:l => ".-..",
	:m => "--",
	:n => "-.",
	:o => "---",
	:p => ".--.",
	:q => "--.-",
	:r => ".-.",
	:s => "...",
	:t => "-",
	:u => "..-",
	:v => "...-",
	:w => ".--",
	:x => "-..-",
	:y => "-.--",
	:z => "--..",
	1 => ".----",
	2 => "..---",
	3 => "...--",
	4 => "....-",
	5 => ".....",
	6 => "-....",
	7 => "--...",
	8 => "---..",
	9 => "----.",
	0 => "-----"
}
CODES_TO_LETTERS = LETTER_TO_CODES.invert

def decode_morse(code)
	words = code.split(" /")
	translated_words = []
	words.each do |word|
		decoded_word = ""
		word.split(" ").each do |c|
			decoded_word += CODES_TO_LETTERS[c].to_s
		end
		translated_words << decoded_word
	end
	translated_words.join(" ")	
end

def encode_morse(message)
	words = message.split(" ")
	translated_words = []
	words.each do |word|
		encoded_letters = []
		word.each_char do |c|
			encoded_letters << LETTER_TO_CODES[c.to_sym]
		end
		translated_words << encoded_letters.join(" ")
	end
	translated_words.join(" /")
end

def play_code(code)
	code = code.gsub(/ \/ ?/, "!")
	code.each_char do |c|
		case c
		when "."
			print "short"
		when "-"
			print "long"
		when "!"
			print "boundary"
		when " "
			print " "
		end		
	end
end

puts "Encode (1), Decode (2) or Play Code (3)"
selection = gets.chomp.to_i
case selection
when 1
	puts "Enter the message and I will encode it for you"
	puts encode_morse(gets.chomp)
when 2
	puts "Enter the morse code and I will decode it for you"
	puts decode_morse(gets.chomp)
when 3
	play_code(gets.chomp)
end