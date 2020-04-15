def find_item_by_name_in_collection(name, collection)
  collection.each do |product_hash|
    product_hash.select{ |key, value|
         if value.to_s == name
           return product_hash
         end
        }
     end
nil

end

def consolidate_cart(cart)
  new_cart = []

  cart.each do |product_hash|
    if !find_item_by_name_in_collection(product_hash[:item], new_cart)
      product_hash[:count] = 1
      new_cart <<  product_hash
    else
      new_cart.each do |new_product_hash|
      new_product_hash[:count] += 1 end
    end
  end

 new_cart
end
