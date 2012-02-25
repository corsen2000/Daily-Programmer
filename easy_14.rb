=begin
Given a list of elements and a block size k, return the list of elements with every block of k elements reversed, starting from the beginning of the list.
For instance, given the list 1, 2, 3, 4, 5, 6 and the block size 2, the result is 2, 1, 4, 3, 6, 5.
=end

input = [1,2,3,4,5,6,7,8,9,10]
blockSize = 3

input.reverse!

blocks = []

begin
	block = []
	(0..blockSize - 1).each {|item|
		block.push(input.pop)
	}

	blocks.push(block.reverse.compact)
end while input.length > 0

puts blocks.flatten
