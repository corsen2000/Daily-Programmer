#In 1934, an Indian math student, S. P. Sundaram, invented a new method of sieving primes:
#From a list of integers from 1 to n, remove all integers of the form i + j + 2ij where integers i and j range from 1 . i . j and i + j + 2ij . n. For each remaining integer k, the integer 2k+1 is prime, and the list gives all the odd primes (thus excluding the prime 2).
#Your task is to implement the sieve of Sundaram and calculate the list of primes to 10000.

i = 1
n = 5000
a = Array.new(0)

begin
	a.push(i)
	i = i + 1	
end while i < n

i = 1
begin
	j = 1
	begin
		numToFind = i + j + (2*i*j)
		if (numToFind <= a.length)
			indexToRemove = numToFind-1 #every number's index is one less than its value
			a[indexToRemove] = 0
		end
		
		j = j + 1
	end while j < n

	i = i + 1
end while i < n

a.each { |c|
	if (c != nil && c != 0)
		puts ((2 * c) + 1).to_s
	end
}

