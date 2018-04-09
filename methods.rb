# Methods, Blocks & Sorting

# Define your method below!
def greeting
  # Do something!
  puts "Hello world."
end

# Define your method above this line.

greeting # Ignore this for now. We'll explain
         # it in the next exercise!



def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")


def greeter (n)
  return "Hello", n
end

def by_three?(n)
  return n % 3 == 0
end


# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item.
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts i * 5 }

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].

my_array.sort!
print my_array

# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# How might we sort! the books in alphabetical order? (Hint, hint)

books.sort!


# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

#method
def welcome (name)
  return "Hello, #{name}"
end

welcome ("cwylie0")


#blocks
my_array = [1, 2, 3, 4, 5]

my_array.each do |n|
  puts n * n
end
