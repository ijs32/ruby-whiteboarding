# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.

# Examples
# Starting with n = 12, the steps would be as follows:

# 12
# 6
# 3
# 10
# 5
# 16
# 8
# 4
# 2
# 1

def collatz(num)
  p num
  step_counter = 0
  while true
    if num == 1
      p num
      return step_counter + 1
    elsif num.even?
      num /= 2
      p num
      step_counter += 1
    else num.odd?
      num = (3 * num) + 1
      p num
      step_counter += 1
    end
  end
end

p collatz(1110120021232) #=> returns 173 steps