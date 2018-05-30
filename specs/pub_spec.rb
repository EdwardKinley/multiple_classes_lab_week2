require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 5)
    @drink2 = Drink.new("wine", 4)
    @drink3 = Drink.new("gin", 6)
    @drink4 = Drink.new("vodka", 7)
    @drink5 = Drink.new("cider", 8)
    @drink6 = Drink.new("milkshake", 3)
    @pub1 = Pub.new("Chanter", 100, {@drink1, @drink2, @drink3, @drink4, @drink5, @drink6})
  end

  def test_pub_name
    assert_equal("Chanter", @pub1.name)
  end

  def test_pub_till_amount
    assert_equal(100, @pub1.till_amount)
  end

  def test_pub_drinks
    assert_equal(6, @pub1.drinks.count)
  end

  def test_pub_stocks_drink?
    assert_equal(true, @pub1.pub_stocks_drink?(@drink1))
  end

end
