
class Leboncoin
  attr_accessor :object, :price, :city
  def initialize(date, object, price, city)
    @date = Time.now
    @object = object
    @price = price
    @city = city
  end
end

new_announce = Leboncoin.new("15/10/2014", "Bull dog", 1000, "Paris")
p new_announce