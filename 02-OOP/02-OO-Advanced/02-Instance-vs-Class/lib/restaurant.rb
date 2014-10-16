class Restaurant
  # TODO: add relevant accessors if necessary

  attr_reader :name, :city, :average_rating

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @rates = []
    # TODO: implement constructor with relevant instance variables
  end

  def rate(new_rate)
    @rates << new_rate
    @average_rating = @rates.inject(:+) / @rates.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant|  restaurant.city == city }
  end
end

jules_verne = Restaurant.new("paris", "Jules Verne")
tour_d_argent = Restaurant.new("paris", "Tour d'argent")
bocuse = Restaurant.new("lyon", "Paul Bocuse")
restos = [jules_verne, tour_d_argent, bocuse]
Restaurant.filter_by_city(restos, "lyon")


# filtered_restaurant = []
# restaurants.each do |restaurant|
# if restaurant.city == city
# filtered_restaurant << restaurant
# end
# end
# TODO : implement #filter_by_city and #rate methods