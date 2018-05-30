class Pub

  attr_reader(:name, :till_amount, :drinks)

  attr_writer(:till_amount)

  def initialize(name, till_amount, drinks = {})
    @name = name
    @till_amount = till_amount
    @drinks = drinks
  end

  def pub_stocks_drink?(drink)
    return @drinks.include?(drink)
  end

  def stock_level
    return @drinks.values.sum
    # stock_count = 0
    # for drink in @drinks.
    #   stock_count += drink.values
    # end
    # return stock_count
  end

  def stock_value
    return @drinks.values.sum * @drinks[:price]
  end

end
