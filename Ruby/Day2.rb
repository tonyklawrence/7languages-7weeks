# Find out how to access files with and without code blocks. What is the benefit of the code block?

# Without a block (need to close afterwards)
file = File.open("Day2.rb")
file.each { |line| puts "#{file.lineno}: #{line}" }
file.close

# With a block (no need to call close)
File.open("Day2.rb") do |file|
  file.each { |line| puts "#{file.lineno}: #{line}"}
end

# How would you translate a hash to an array? (yes, easy)
hash = { :a=>1, :b=>2, :c=>3, :d=>4}
p hash.to_a
p hash.to_a.flatten
# Can you translate arrays to hashes? (yes, but why the *?)
array = hash.to_a.flatten
p Hash[*array]
