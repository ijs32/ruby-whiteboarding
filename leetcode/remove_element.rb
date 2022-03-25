nums = [0,1,2,2,3,0,4,2]
val = 2

def remove_elements(nums, val)
  i = 0
  while i <= nums.length
    if nums[i] == val
      nums.delete_at(i)
    else
      i += 1
    end
  end
  return nums
end

p remove_elements(nums, val)