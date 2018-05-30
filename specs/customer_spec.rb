require("minitest/autorun")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("James", 1000)
    @customer2 = Customer.new("Ed", 1500 )
  end

  def test_cusomter_name
    assert_equal("James", @customer1.name)
  end

  def test_customer_wallet_ammount
    assert_equal(1000, @customer1.wallet_amount)
  end

end
