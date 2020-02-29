#irb(main):001:0> require './price_module.rb'
#=> true
#irb(main):002:0> price = Product.new
#=> #<Product:0x0000000254cdb8>
#irb(main):003:0> price.price=100
#=> 100
#irb(main):004:0> price.total_price
#=> 108.0
#irb(main):005:0> orderitem = OrderItem.new
#=> #<OrderItem:0x0000000255c448>
#irb(main):006:0> orderitem.unit_price = 100
#=> 100
#irb(main):007:0> orderitem.volume = 10
#=> 10
#irb(main):008:0> orderitem.price
#=> 1000


# Price Module
class Tax
  def self.rate
    1.08
  end
end

# Calclate Price with Tax
module PriceHolder
  def total_price
    price * Tax.rate
  end
end

# Set Price 
class Product
  include PriceHolder
  attr_accessor :price
end

# Set Unit Price and quantity
class OrderItem
  include PriceHolder
  attr_accessor :unit_price,  :volume

# Without Tax * Quantity
  def price
  unit_price * volume
  end
end
