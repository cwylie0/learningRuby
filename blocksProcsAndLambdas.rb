# Collect 'Em All 

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

double = Proc.new {|x| x * 2}

doubled_fibs = fibs.collect(&double)

puts doubled_fibs


# Yielding with Parameters
def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
end
  
yield_name("Eric") { |n| puts "My name is #{n}." }
 
# Now call the method with your name!
yield_name("cwylie0") { |n| puts "My name is #{n}."}


# Proc Syntax
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|x|x.floor}

ints = floats.collect(&round_down)
print ints

# Why Procs
# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]


# Complete this as a new Proc
over_4_feet = Proc.new{|x|x >= 4}


# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3


# Create Your Own!
def greeter
    yield
end

phrase = Proc.new do
    puts "Hello there!"
end
  
greeter(&phrase)

# Call Me Maybe
hi = Proc.new {puts "Hello!"}
hi.call


# Lambda Syntax
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)
print symbols


# Now You Try!
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol}

symbols = my_array.select(&symbol_filter)

puts symbols
# [:kettles, :mittens, :packages]


# Been Around the Block a Few Times
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select { |x| x.is_a? Integer }

puts ints
# [42, 3, 19]


# Passing Your Proc to a Method
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new {|x| x < 100}

youngsters = ages.select(&under_100)

puts youngsters
# [23, 7, 11, 94, 70, 44]


# Creating a Lambda
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
first_half = lambda {|key, value| value < "M" }

a_to_m = crew.select(&first_half)

puts a_to_m
# {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}


