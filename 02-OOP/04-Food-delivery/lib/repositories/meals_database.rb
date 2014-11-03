#require 'csv'
require_relative '../models/meal'


class MealsDatabase

  attr_reader :meals

  def initialize # ajouter l'address csv file dans l'app
    #@csv_file = "repositories/customers.csv"
    @meals = []
    #CSV.foreach(csv_file) { |row| @customers << Customers.new(row[0], row[1] ) }
  end

  def add_meals_to_database(meal)
    @meals << meal
    #CSV.open(@csv_file, 'a') do |csv|
    #csv << [customer.name, customer.adress]
    #end
  end
end