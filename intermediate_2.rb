=begin
create a short text adventure that will call the user by their name. 
The text adventure should use standard text adventure commands ("l, n, s, e, i, etc.").
for extra credit, make sure the program doesn't fault, quit, glitch, fail, or loop no matter what is put in, even empty text or spaces. 
These will be tested rigorously!
For super extra credit, code it in C
=end

$PATH = {
	:message => "$name you come to a fork in the row.  Go left (L) or right (R)?",
	:actions => {
		:l => {
			:message => "There is a zombie. Shoot with arrow (A) or use Chainsaw (C)?",
			:actions => {
				:a => {
					:message => "You lose..."
				},
				:c => {
					:message => "You Win!"
				}
			}
		},
		:r => {
			:message => "There is a vampire.  Use wood stake(W) or use gun(G)?",
			:actions => {
				:w => {
					:message => "You Win!"
				},
				:g => {
					:message => "You lose..."
				}
			}			
		}	
	}
}

def playNode(node)
	puts node[:message].gsub("$name", $name)
	if node[:actions]
		action = gets.chomp.downcase.to_sym
		if node[:actions][action]
			playNode node[:actions][action]
		else
			playNode node
		end
	end
end

puts "Welcome to text adventure, lets begin"
puts "What is your name?"
$name = gets.chomp

done = false
while(!done)
	playNode($PATH)
	puts "Would you like to play again? (yes, no)"
	answer = gets.chomp.chr
	done = true if answer == "n"
end