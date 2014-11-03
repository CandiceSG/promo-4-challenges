require_relative "../models/employee"
require_relative "../views/employees_display"

class EmployeesController
  def initialize
    @employees_display = EmployeesDisplay.new
  end

  def list_employees
    @employees_display.display_list_employees(employees)
  end
end

manager_new = Manager.new("marcel", "1234", 45)
manager_new.status