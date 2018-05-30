class Customer

  attr_reader(:name, :wallet_amount)

 def initialize(name, wallet_amount)
   @name = name
   @wallet_amount = wallet_amount
 end

 def customer_can_afford_drink?(drink)
   return @wallet_amount >= drink.price
 end

 def buys_drink(pub, drink)
   return if !customer_can_afford_drink?(drink)
   return if pub.pub_stocks_drink?(drink) == false
   @wallet_amount -= drink.price
   pub.till_amount += drink.price
 end

end
