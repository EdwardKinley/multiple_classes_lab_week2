require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test
   def setup
     @drink1 = Drink.new("beer", 5)
     @drink2 = Drink.new("wine", 4)

   end

   def test_drink_name
     assert_equal("beer", @drink1.name)
   end

   def test_drink_price
     assert_equal(5, @drink1.price)
   end

end
