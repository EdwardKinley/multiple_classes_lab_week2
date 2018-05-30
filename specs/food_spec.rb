require("minitest/autorun")
require_relative("../food.rb")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class FoodTest < MiniTest::Test
  def setup
    @customer1 = Customer.new("James", 1000, 28, 1)
    @customer2 = Customer.new("Ed", 1500, 40, 20 )
    @food1 = Food.new("pizza", 10, 10)
    @food2 = Food.new("chips", 5, 20)
  end

  def test_food_attributes
    assert_equal("pizza", @food1.name)
    assert_equal(10, @food1.price)
    assert_equal(20, @food2.rejuvenation_level)
  end

  def test_drunkenness_decreases
    @customer1.eats(@food2)
    assert_equal(0, @customer1.drunkenness)
    @customer2.eats(@food1)
    assert_equal(10, @customer2.drunkenness)
  end

end
