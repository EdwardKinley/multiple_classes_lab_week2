require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("James", 1000, 28, 1)
    @customer2 = Customer.new("Ed", 1500, 40, 20 )
    @customer3 = Customer.new("Adam", 50, 12, 0)
    @drink1 = Drink.new("beer", 5, 4)
    @drink2 = Drink.new("wine", 4, 17)
    @drink3 = Drink.new("gin", 6, 30)
    @drink4 = Drink.new("vodka", 7, 30)
    @drink5 = Drink.new("cider", 8, 5)
    @drink6 = Drink.new("milkshake", 3, 0)
    @pub1 = Pub.new("Chanter", 100, [@drink1, @drink2, @drink3, @drink4, @drink5, @drink6])
  end

  def test_cusomter_name
    assert_equal("James", @customer1.name)
  end

  def test_customer_wallet_ammount
    assert_equal(1000, @customer1.wallet_amount)
  end

  def test_cusomter_age
    assert_equal(28, @customer1.age)
  end

  def test_customer_buys_drink__wallet_amount_decreases
    @customer1.buys_drink(@pub1, @drink1)
    assert_equal(995, @customer1.wallet_amount)
  end

  def test_customer_buys_drink__till_amount_increases
    @customer1.buys_drink(@pub1, @drink1)
    assert_equal(105, @pub1.till_amount)
  end

  def test_customer_can_affored_drink?
    assert_equal(true, @customer1.customer_can_afford_drink?(@drink1))
  end

  def test_customer_served__underage
  assert_equal(nil,@customer3.buys_drink(@pub1,@drink1))
  end

  def test_customer_served__overage
  assert_equal(true,@customer1.buys_drink(@pub1,@drink1))
  end

  def test_drunkenness__no_drink
    assert_equal(1, @customer1.drunkenness)
  end

  def test_drunkenness__one_drink
    @customer2.buys_drink(@pub1, @drink5)
    assert_equal(25, @customer2.drunkenness)
  end

end
