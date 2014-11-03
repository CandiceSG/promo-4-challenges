require_relative "../models/employee"
require_relative '../controllers/employees_controller'


class EmployeesDisplay

  def display_list_employees(employees)
    puts "Voici la liste des employés : "
    if employees
      employees.each {|employee|
      p "#{employee.id} #{employee.name}- is a delivery guy"}
    else
      p "#{manager.id} #{manager.name}- is the manager"
    end
  end
end

