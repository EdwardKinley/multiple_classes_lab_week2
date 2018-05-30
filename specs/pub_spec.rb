require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 5, 4)
    @drink2 = Drink.new("wine", 4, 17)
    @drink3 = Drink.new("gin", 6, 30)
    @drink4 = Drink.new("vodka", 7, 30)
    @drink5 = Drink.new("cider", 8, 5)
    @drink6 = Drink.new("milkshake", 3, 0)
    @pub1 = Pub.new("Chanter", 100, {@drink1 => 10, @drink2 => 10, @drink3 => 10, @drink4 => 10, @drink5 => 10, @drink6 => 10})
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

  def test_stock_level
    assert_equal(60, @pub1.stock_level)
  end

  def test_stock_value
    assert_equal(330, @pub1.stock_value)
  end

end
