class Restaurant

  attr_reader :name, :location, :phone, :number_employee, :number_customer, :menu

  def initialize(name, location, phone)
    @name = name
    @location = location
    @phone = phone
    @number_employees = 0
    @number_customers = 0
    @menu = [Meal.new("poulet frites", 12), Meal.new("rumsteak frites", 13)]
  end
end