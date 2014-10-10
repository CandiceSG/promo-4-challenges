BURGER = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Royal Cheese" => 130,
  "Mc Bacon" => 400
}

SIDE = {
  "French fries" => 130,
  "Potatoes" => 130
}

BEVERAGE = {
"Coca" => 160,
"Sprite" => 170
}

def poor_calories_counter(burger, side, beverage)
  calories_counter = BURGER[burger] + SIDE[side] + BEVERAGE[beverage]
  return calories_counter
end

# p poor_calories_counter("Cheese Burger", "French fries", "Coca")



DISHES = {
"Cheese Burger" => 290,
"French fries" => 130,
"Coca" => 160,
"Royal Cheese" => 130,
"Mc Bacon" => 400,
"Potatoes" => 130,
"Sprite" => 170,
"Big Mac" => 300,
"French fries" => 130,
"Sprite" => 170
}

MENU_TAB = {
  "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
  "Best_of_royal_cheese" => poor_calories_counter("Royal Cheese","Potatoes", "Sprite"),
  "Best_of_big_mac" => poor_calories_counter("Big Mac", "French fries", "Sprite")
}

p MENU_TAB

def calories_counter(*orders)
  calories = 0
  orders.each do | item |
    if BURGER.has_key?(item)
      calories += BURGER[item]
    elsif SIDE.has_key?(item)
      calories += SIDE[item]
    elsif BEVERAGE.has_key?(item)
      calories += BEVERAGE[item]
    elsif MENU_TAB.has_key?(item)
      calories += MENU_TAB[item]
    end
  end
  calories
end


