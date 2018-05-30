class Customer

  attr_reader(:name, :wallet_amount)

 def initialize(name, wallet_amount)
   @name = name
   @wallet_amount = wallet_amount
 end

end
