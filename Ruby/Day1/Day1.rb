puts "Hello, World"

puts "Hello, Ruby.".index("Ruby.")

10.times { puts "Tony Lawrence" }

(1..10).each { |i| puts "This is sentence number #{i}." }

num = rand(10)
puts 'Guess a number between 0 and 9'
guess = gets.to_i
puts 'You are right' if guess == num
puts "Bad luck, number was #{num}" unless guess == num
