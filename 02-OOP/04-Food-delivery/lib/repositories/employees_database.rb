# require 'csv'
require_relative '../models/employee'


class EmployeeDatabase

  attr_reader :employees

  def initialize # ajouter l'address csv file dans l'app
  # créer un csv
    @employees = []
    #CSV.foreach(csv_file) { |row| @employees << Employees.new(row[0], row[1] ) }
  end

  def find_employee_from_id(id)
    employees.select {|employee| employee.name if employee.id == id}
  end

  def add_employee_to_database(employee)
    @employee << employee
    #CSV.open(@csv_file, 'a') do |csv|
    #csv << [customer.name, customer.adress]
    #end
  end
end