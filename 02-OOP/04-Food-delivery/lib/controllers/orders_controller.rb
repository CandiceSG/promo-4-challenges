require_relative '../models/order'

class OrderController

  attr_reader :orders
  def initialize
    @orders = []
  end

private

  def create_order
  end

  def access_info(orders)
    orders.each_with_index do | order, index|
      id = order.id
      date = order.date
      customer = order.customer
      status_complete = order.status_complete
      meal = meal.item
      total_price = order.total_price
      deliveryguy = order.deliveryguy
    end
    return @display_info.orders
  end



  def dispatch_order
  end


  def mark_as_done?
    # if status = true
    # else
    # mark as done
  end

  def delete_order
    # if mark as done
    # delete
  end

end