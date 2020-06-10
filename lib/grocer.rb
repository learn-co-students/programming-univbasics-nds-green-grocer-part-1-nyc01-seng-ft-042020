require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  i = 0
  
  while i < collection.length do 
    return collection[i] if collection[i][:item] == name
    i += 1
  end 

  # collection.each do |item|
  #   return item if item[:item] === name
  # end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  i = 0
  new_cart = []

  while i < cart.length do 
    item = find_item_by_name_in_collection(cart[i][:item], new_cart)

    if item
      new_cart.each do |item|
        if item === item
          item[:count] += 1
        end
      end
      i += 1
    else
      cart[i][:count] = 1
      new_cart << cart[i]
      i += 1
    end

  end

  new_cart

end


  