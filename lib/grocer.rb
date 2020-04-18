require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  nil
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  index = 0
new_cart = []

cart.each do |grocery_item|
  current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_index = 0
      new_cart.each do |new_item|
        if new_item[:item] == current_item[:item]
          new_item[:count] += 1
        end
        new_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end
