class Customer

  attr_reader(:name, :wallet_amount, :age)

 def initialize(name, wallet_amount, age)
   @name = name
   @wallet_amount = wallet_amount
   @age = age
 end

 def customer_can_afford_drink?(drink)
   return @wallet_amount >= drink.price
 end

 def buys_drink(pub, drink)
   return if !customer_can_afford_drink?(drink)
   return if pub.pub_stocks_drink?(drink) == false
   return if @age < 18
   @wallet_amount -= drink.price
   pub.till_amount += drink.price
   return true
 end

end
