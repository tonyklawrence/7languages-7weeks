# Find out how to access files with and without code blocks. What is the benefit of the code block?

# Without a block (need to close afterwards)
file = File.open("Day2.rb")
file.each { |line| puts "#{file.lineno}: #{line}" }
file.close

# With a block (no need to call close)
File.open("Day2.rb") do |file|
  file.each { |line| puts "#{file.lineno}: #{line}"}
end