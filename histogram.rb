# Counts occurences of words in a block of text.

puts "Enter a block of text: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1}
frequencies = frequencies.sort_by {|a, b| b}
frequencies.reverse!

frequencies.each do |word, count|
  puts word + " " + count.to_s
end
