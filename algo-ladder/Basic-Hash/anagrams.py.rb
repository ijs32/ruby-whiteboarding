# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# input = "silent", "listen"
# Output: true

# Input: “frog”, “bear”
# Output: false

def anagrams(str1, str2)
  hash1 = {}
  hash2 = {}
  i = 0
  while i < str1.length
    if hash1[str1[i]]
      hash1[str1[i]] += 1
    else
      hash1[str1[i]] = 0
    end
    if hash2[str2[i]]
      hash2[str2[i]] += 1
    else
      hash2[str2[i]] = 0
    end
    i += 1
  end
  return hash1 == hash2
end

p anagrams("silent", "listen") # => true
p anagrams("frog", "bear") # => false
