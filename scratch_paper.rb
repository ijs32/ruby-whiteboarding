# def solution(n)
#   arr = n.to_s.split(//)
#   return arr.map{|n| n.to_i }.reduce(:+)
# end

# p solution(29)

# the goal with this take home is to break down the below transaction into various properties, for example
# transaction_id for this particular transaction = e7d36ba58a, you then have to format some of the

transaction = "e7d36ba58a02021-09-10RAKUTEN PYMNT HEALTH  JEWELRY           D0000078885"
property = "amount"

def solution(transaction, property)
  parsing_hash = {
    "transaction_id" => transaction[0..9], # done
    "is_posted" => transaction[10], # done
    "as_of_date" => transaction[11..20], # done
    "description" => transaction[21..60], # done
    "direction" => transaction[61], # done
    "amount" => transaction[62..71] # done
  }
  if !(parsing_hash.keys.include? property) || transaction == ""
    return ""
  elsif property == "transaction_id" || property == "as_of_date"
    return parsing_hash[property]
  elsif property == "is_posted"
    return parsing_hash["is_posted"] == 1
  elsif property == "direction"
    if parsing_hash[property] == "D"
      return "debit"
    else return "credit"
    end
  elsif property == "description"
    return parsing_hash[property].strip
  elsif property == "amount"
    arr = parsing_hash[property].split(//)
    while arr[0] == "0"
      arr.shift
    end
    return arr.join
  end
end

p solution(transaction, property)

def roll_some_dice(number_of_roles)
  dice_rolls = {}
  number_of_roles.times.with_index{|index| dice_rolls[index + 1] = rand(1..6)}
  return dice_rolls
end

p roll_some_dice(6)

sally_languages = ["french", "spanish", "english"]
sam_recipes = ["crepes", "pizza", "pie"]

if (sam_recipes.include? "crepes") || (sally_languages.include? "french")
  puts "get married"
else
  puts "avoid eachother at all cost"
end

nums = []
6.times{nums.push(rand(1..60))}

p nums
