str = "Let's take LeetCode contest"

def reverse_words(s)
  s = s.split(" ")
  index_of_words = 0
  s.each do |word|
    i, i2 = 0, word.length - 1
    while true
      s[index_of_words] = word && break if i > i2
      word[i], word[i2] = word[i2], word[i]
      i += 1
      i2 -= 1
    end
    index_of_words += 1
  end
  return s.join(" ")
end

p reverse_words(str)