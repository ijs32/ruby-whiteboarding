# Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

def count_odds(low, high)
  range = (high - low)
  range += 1 if low.odd?
  range += 1 if high.odd?
  return range/2
end

p count_odds(8, 10)

# had to re-solve as I misunderstood the question