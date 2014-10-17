require_relative "recipe"
require_relative "cookbook"

class Display
  def create_recipe
    puts "What is your recipe?"
    print "> "
    return gets.chomp
  end

  def recipe_description
    puts "Describe your recipe"
    print "> "
    return gets.chomp
  end

  def destroy_recipe
    puts "Do you want to destroy a recipe ?"
    print "> "
    return gets.chomp
  end

  def display_recipe(recipes)
    puts "Voici la liste des recettes: "
    recipes.each_with_index do |recipe, index|
      puts index.to_s + " " + recipe.name + " " + recipe.description
    end
  end
end