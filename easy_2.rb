=begin
Hello, coders! An important part of programming is being able to apply your programs, so your challenge 
for today is to create a calculator application that has use in your life. It might be an interest calculator, 
or it might be something that you can use in the classroom. For example, if you were in physics class, you might want to make a F = M * A calc.
EXTRA CREDIT: make the calculator have multiple functions! Not only should it be able to calculate F = M * A, but also A = F/M, and M = F/A!
=end

# Simple bill calculation. 
# Example usage: ruby easy_2.rb 22.99(amount) 2(people)
puts (ARGV[0].to_f / ARGV[1].to_i * 1.20).round 2