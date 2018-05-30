class Pub

  attr_reader(:name, :till_amount, :drinks)

  def initialize(name, till_amount, drinks = [])
    @name = name
    @till_amount = till_amount
    @drinks = drinks
  end

end
