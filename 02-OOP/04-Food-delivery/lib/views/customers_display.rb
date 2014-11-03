class CustomersDisplay

  def ask_for(something)
  puts "What's your #{something} ?"
  print "> "
  gets.chomp
  end

  def display_list(customers)
    customers.each do |customer|
      puts "#{customer.name} - #{customer.address}"
    end
  end
end

