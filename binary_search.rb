array = [1,2,5,6,7,9,10,13,15,19,21,30,31]
val = 21
puts array.length
def binary_search(val, array)
  return "not present" if !(array.any? val)
  
  index = array.length / 2
  while true
    if array[index] > val
      index = index / 2
    elsif array[index] < val
      index = index * 2
    else
      return index
    end
  end
end

puts binary_search(val, array)
# puts recurse_binary(0, val, array)