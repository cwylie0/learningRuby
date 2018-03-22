print "Daffy Duckifier v.1.0.\nEnter a string: "
user_input = gets.chomp

user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to replace."
end

puts "Your string is: #{user_input}"
