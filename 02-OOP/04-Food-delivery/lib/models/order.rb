class Order

  attr_reader :id, :price, :date, :deliveryguy, :items

  def initialize(id, price, date, deliveryguy, meals)
    @id = id
    @date = date
    @total_price = 0
    @deliveryguy = deliveryguy
    @customer = customer
    @status_complete = false
    @meals = []
  end
end