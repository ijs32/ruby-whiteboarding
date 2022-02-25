# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Note that you must do this in-place without making a copy of the array.
nums = [0, 0, 1]
def move_zeroes(nums)
  count = 0
  nums.each do |num|
    if num == 0
      count += 1
    end
  end
  nums.delete(0)
  count.times do
    nums.push(0)
  end
  return nums
end

p move_zeroes(nums)