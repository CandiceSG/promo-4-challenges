require_relative '../models/order'


class OrdersDatabase

  attr_reader :orders

  def initialize # ajouter l'address csv file dans l'app
    #@csv_file = "repositories/customers.csv"
    @orders = []
    #CSV.foreach(csv_file) { |row| @customers << Customers.new(row[0], row[1] ) }
  end

  def find_order_from_id
  end

  def add_order_to_database(customer)
    @orders << order
    #CSV.open(@csv_file, 'a') do |csv|
    #csv << [customer.name, customer.adress]
    #end
  end
end