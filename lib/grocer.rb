require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  nil
end

def consolidate_cart(cart)
  index = 0
  new_cart = []
  cart.each do |grocery|
    current_item = find_item_by_name_in_collection(grocery[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_item|
        if new_item[:item] == current_item[:item]
          new_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery[:count] = 1
      new_cart << grocery
    end
    index += 1
  end
  new_cart
end



  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
