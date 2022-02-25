# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.
str = "Hello"

def reverse_string(s)
  i, i2 = 0, s.length - 1
  while true
    return s if i > i2
    s[i], s[i2] = s[i2], s[i]
    i += 1
    i2 -= 1
  end
end

p reverse_string(str)