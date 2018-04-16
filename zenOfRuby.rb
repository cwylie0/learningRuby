puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

# Implicit return
def multiple_of_three(n)
    n % 3 == 0 ? "True" : "False"
end

# Print the evens
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |x| puts x if x.even? }

# Up the Down Staircase
letter = "L"
letter.upto("P") { |character| puts character}

# Concatenation operator
alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!

# String Interpolation
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

# Ternary Operator
puts 1 < 2 ? "One is less than two!" : "One is not less than two."

# Case Many Options
puts "What's your favorite language?"
language = gets.chomp

case language
  
when "Ruby" then puts "Ruby is great for web apps!"
when "Python" then puts "Python is great for science."
when "JavaScript" then puts "JavaScript makes websites awesome."
when "HTML" then puts "HTML is what websites are made of!"
when "CSS" then puts "CSS makes websites pretty."
else puts "I don't know that language!"
end

# For Shame
3.times do 
    puts "I'm a refactoring master!"
end