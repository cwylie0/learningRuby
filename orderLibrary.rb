# Ordering Your Library
def alphabetize (arr, rev=false)
  arr.sort!
  if rev==true
    arr.reverse!
  else
    return arr
  end
end

numbers = [4,1,65,234]
alphabetize(numbers)
puts numbers
