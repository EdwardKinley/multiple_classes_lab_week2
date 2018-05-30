require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test
   def setup
     @drink1 = Drink.new("beer", 5, 4)
     @drink2 = Drink.new("wine", 4, 17)

   end

   def test_drink_name
     assert_equal("beer", @drink1.name)
   end

   def test_alcohol_level
     assert_equal(4, @drink1.alcohol_level)
   end

   def test_drink_price
     assert_equal(5, @drink1.price)
   end

end
