# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

input = [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def double(arr)
  return arr.map { |num| num * 2 }
end

p double(input) # => [8, 4, 10, 198, -8]