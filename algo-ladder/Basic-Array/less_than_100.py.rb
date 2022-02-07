# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

input = [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def less_than_100(array)
  new_arr = []
  array.each do | num |
    if num < 100
      new_arr << num
    end
  end
  return new_arr  
end

p less_than_100(input)