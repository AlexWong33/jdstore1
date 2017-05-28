class Cart < ApplicationRecord
  has_many :items
  has_many :products, through: :cart_items, source: :products

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end
  
end