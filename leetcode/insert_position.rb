# Given a sorted array of distinct integers and a target value, return the index if the target is found. 
# If not, return the index where it would be if it were inserted in order.
nums = [1,3,5,6]
target = 0
# Output: 2

def search_insert(nums, target)
  checked = {}
  checked[target] = 0
  nums.each.with_index do |num, index|
    checked[num] = index
  end
  unless !(checked.include? target)
    nums.each.with_index do |num, index|
      if target > num
        checked[target] = index + 1
      else break
      end
    end
  end
  return checked[target]
end

p search_insert(nums, target)