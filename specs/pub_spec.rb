require("minitest/autorun")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @pub1 = Pub.new("Chanter", 100, ["beer", "wine", "gin", "vodka", "cider", "milkshake"])
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

end
