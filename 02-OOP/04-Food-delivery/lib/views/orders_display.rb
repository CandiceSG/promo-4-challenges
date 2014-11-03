require_relative "../models/order"
require_relative "../controllers/orders_controller"

class OrdersDisplay

  def display_info(manager, deliveryguy)
    if manager
      puts "#{order.id} : #{order.date} / #{order.meal} - #{order.customer} - #{order.deliveryguy} - #{order.total_price} - #{order.status_complete}"
    elsif deliveryguy
    # else password != @password
    #   "wrong password"
    end
  end

  def display_add_order

  end

  def display_dispatch_order
  end

  def display_mark_as_done
  end

  def display_delete_order
  end

end
