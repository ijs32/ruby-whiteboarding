# frozen_string_literal: true

# Given a hash, where the keys are strings representing food items, and the values
# are numbers representing the price of each food
# return the amount someone would pay if they'd order one of each food from the entire menu.

menu_hash = { 'hot dog' => 2, 'hamburger' => 3, 'steak sandwich' => 5, 'fries' => 1, 'cole slaw' => 1, 'soda' => 2 }

# Output: 14

def order_the_menu(menu_hash)
  price = 0
  menu_hash.each do |_, value|
    price += value
  end
  price
end

p order_the_menu(menu_hash) # => 14
