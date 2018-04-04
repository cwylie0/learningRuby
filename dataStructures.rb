my_array = [1, 1, 2]

demo_array = [100, 200, 300, 400, 500]

print demo_array[2] # Add your code here!


# Arrays of Strings
string_array = ['Homer', 'Israel', 'Rachel']


# Arrays of Arrays
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

my_2d_array = [[1,1,2,3], [1,2,3,5], [2,3,5,8], [3,5,8,13]]


# Intro to Hashes
my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# Using Hash.new
pets = Hash.new
pets ["Alice"] = 'cat'

puts pets["Alice"]


# (Re)Introduction to Iteration
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }


languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |element| puts element}

# Iterating Over Multidimensional Arrays
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |superhero, name|
  puts "#{superhero}: #{name}"
end

my_hash = {
  "iPhone X" => 399.99,
  "iPhone 8 Plus" => 129.99,
  "iPhone 8" => 129.99,
  "iPhone 7 Plus" => 119.99,
  "iPhone 7" => 119.99
}

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each { |name, order| puts order }
