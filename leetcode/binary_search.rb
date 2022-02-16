nums = [-1,0,3,5,9,12]
target = 9

def binary_search(nums, target)
  map = {}
  if nums.include? target
    nums.each.with_index do |num, index|
      map[num] = index
    end
  else
    return -1
  end
  return map[target]
end

p binary_search(nums, target)