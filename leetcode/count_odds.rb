# Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

def count_odds(low, high)
  odds = []
  while low <= high
    odds.push(low) if low.odd?
    low += 1
  end
  return odds
end

p count_odds(3, 9)