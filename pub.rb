class Pub

  attr_reader(:name, :till_amount, :drinks)

  attr_writer(:till_amount)

  def initialize(name, till_amount, drinks = [])
    @name = name
    @till_amount = till_amount
    @drinks = drinks
  end

  def pub_stocks_drink?(drink)
    return @drinks.include?(drink)
  end

end
