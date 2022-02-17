# Given an array, rotate the array to the right by k steps, where k is non-negative.
nums = [1,2,3,4,5,6,7]
k = 3
# Output: [5,6,7,1,2,3,4]

def rotate(nums, k)
  while k > 0
    nums.unshift(nums.pop)
    k -= 1
  end
end

p rotate(nums, k)