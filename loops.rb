# Assignment Operators
counter = 1
while counter < 11
  puts counter
  counter += 1
end

# The 'For' Loop
for num in 1...10
  puts num
end

# Inclusive and Exclusive Ranges
for num in 1..15
  puts num
end

# The Loop Method
i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# Next!
i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end

# The .each Iterator
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end


# Try It Out!
odds = [1,3,5,7,9]

# Add your code below!
odds.each do |item|
  print item*2
end

# The .times Iterator
8.times {print "All of which are American Dreams!"}

# Looping with while
i = 1
while i <= 50 do
  print i
  i += 1
end

# Looping with until i = 1
until i > 50 do
  print i
  i += 1
end

# Loop the Loop with Loopingm = 0
loop do
  m += 1
  print "Ruby!"
  break if m == 30
end
