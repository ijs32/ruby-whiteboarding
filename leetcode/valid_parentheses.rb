# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

# def is_valid(s)
#   s = s.scan(/../)
#   i = 0
#   parenthesis_checker = { '(' => ')', '[' =>  ']', '{' => '}' }
#   valid = true
#   while i < s.length
#     if parenthesis_checker[s[i][0]] == s[i][1]
#       i += 1
#     else
#       valid = false
#       break
#     end
#   end
#   return valid
# end

# p is_valid("(]")

'''
although my solution works on many examples it fails with inputs with parenthesis inside parenthesis...
this below solution was taken from leetcode comments and is really smart and simple.
I am learning so much by trying to understand smarter engineers work
'''
def is_valid(s)
  return true if s.empty?

  paranthesis_map = { "(" => ")", "{" => "}", "[" => "]"}
  stack = []

  s.each_char do |char|
    p stack
    if paranthesis_map.keys.include? char
      stack << paranthesis_map[char]
    elsif stack.pop != char
      return false
    end
  end

  stack.empty?
end

p is_valid("([])")