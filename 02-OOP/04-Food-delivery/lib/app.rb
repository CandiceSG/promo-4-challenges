require_relative '../lib/controllers/customers_controller'
require_relative '../lib/controllers/employees_controller'
require_relative '../lib/controllers/orders_controller'
require_relative '../lib/repositories/customers_database'
require_relative '../lib/repositories/employees_database'
require_relative '../lib/repositories/meals_database'
require_relative '../lib/repositories/orders_database'
require_relative '../lib/models/customer'
require_relative '../lib/models/employee'
require_relative '../lib/models/meal'
require_relative '../lib/models/order'
require_relative '../lib/models/restaurant'
require_relative '../lib/views/customers_display'
require_relative '../lib/views/employees_display'
require_relative '../lib/views/orders_display'

#require_relative 'router'

# CSV_FILE = File.join(File.dirname(__FILE__), 'recipes.csv')
customers_database = CustomersDatabase.new
customers_controller = CustomerController.new
employees_database = EmployeeDatabase.new
employees_controller = EmployeesController.new
orders_database = OrdersDatabase.new
orders_controller = OrderController.new
meals_db = MealsDatabase.new

#router = Router.new(customers_controller, employees_controller, orders_controller)

# Start the app
#router.run