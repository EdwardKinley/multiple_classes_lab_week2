require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("James", 1000)
    @customer2 = Customer.new("Ed", 1500 )
    @drink1 = Drink.new("beer", 5)
    @drink2 = Drink.new("wine", 4)
    @drink3 = Drink.new("gin", 6)
    @drink4 = Drink.new("vodka", 7)
    @drink5 = Drink.new("cider", 8)
    @drink6 = Drink.new("milkshake", 3)
    @pub1 = Pub.new("Chanter", 100, [@drink1, @drink2, @drink3, @drink4, @drink5, @drink6])
  end

  def test_cusomter_name
    assert_equal("James", @customer1.name)
  end

  def test_customer_wallet_ammount
    assert_equal(1000, @customer1.wallet_amount)
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


end
