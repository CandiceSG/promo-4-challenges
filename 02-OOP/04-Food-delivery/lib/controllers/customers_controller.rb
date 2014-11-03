require_relative '../views/customers_display'
require_relative '../models/customer'
require_relative '../repositories/customers_database'

class CustomerController

attr_reader
  def initialize
    @customers_display = CustomersDisplay.new
  end

  def list_customer
    @customer_display.display_list(@customers_database.customers)
  end

  def create_and_store_customer
    name = @customer_display.ask_for("name")
    address = @customer_display.ask_for("address")
    new_customer = Customer.new(name, address, id)
    @customers_database.add_customer_to_database(new_customer)
  end
end

