#require 'csv'
require_relative '../models/customer'


class CustomersDatabase

  attr_reader :customers

  def initialize # ajouter l'address csv file dans l'app
    #@csv_file = "repositories/customers.csv"
    @customers = [
      Customer.new(1, "name1", "phone1", "adress1")
      Customer.new(2, "name2", "phone2", "adress2")
      Customer.new(3, "name3", "phone3", "adress3")]
    #CSV.foreach(csv_file) { |row| @customers << Customers.new(row[0], row[1] ) }
  end

  def find_customer_from_id
  end

  def add_customer_to_database(customer)
    @customers << customer
    #CSV.open(@csv_file, 'a') do |csv|
    #csv << [customer.name, customer.adress]
    #end
  end
end