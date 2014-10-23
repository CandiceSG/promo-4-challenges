class Recipe
  attr_reader :name, :description, :rating, :done

  def initialize(name, description, rating, done)
    @name = name
    @description = description
    @rating = rating
    @done = done == "true" ? true : false
  end

  def mark_as_done
    @done = true
  end
end