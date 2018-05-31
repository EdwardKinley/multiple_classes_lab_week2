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

  def stock_amount
    aggregate_stock_amount = 0
    @drinks.each{|key, value| aggregate_stock_amount += value}
    return aggregate_stock_amount
  end

  def stock_value
    aggregate_stock_value = 0
    @drinks.each{|key, value| aggregate_stock_value += value*key.price}
    return aggregate_stock_value
  end

end
