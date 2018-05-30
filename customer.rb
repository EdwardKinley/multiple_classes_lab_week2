class Customer

  attr_reader(:name, :wallet_amount, :age, :drunkenness)

 def initialize(name, wallet_amount, age, drunkenness)
   @name = name
   @wallet_amount = wallet_amount
   @age = age
   @drunkenness = drunkenness
 end

 def customer_can_afford_drink?(drink)
   return @wallet_amount >= drink.price
 end

 def sober?
   return @drunkenness < 100
 end

 def buys_drink(pub, drink)
   return if !customer_can_afford_drink?(drink)
   return if pub.pub_stocks_drink?(drink) == false
   return if @age < 18
   return if !sober?
   @wallet_amount -= drink.price
   pub.till_amount += drink.price
   @drunkenness += drink.alcohol_level
   return true
 end

end
