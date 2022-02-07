# Given an array, write a function that returns an array that contains the original array’s values in reverse.

input = [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

def reverse(arr)
  i = (arr.length - 1)
  new_arr = []
  while i >= 0
    new_arr << arr[i]
    i -= 1
  end
  return new_arr
end

p reverse(input) # => [5, 4, 3, 2, 1]