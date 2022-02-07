# Write a function that returns the greatest value from an array of numbers.

input = [5, 17, -4, 20, 12]
# Output: 20

def array_max(array)
  max = 0
  array.each do |num|
    if num > max
      max = num
    end
  end
  return max
end

puts array_max(input) # => 20