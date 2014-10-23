require_relative "recipe"
require_relative "cookbook"
require_relative "controller"

class Display


  def import_recipe_web
    puts "Import recipes for which ingredient ?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_recipe_done(recipes)
      #puts "This is all the recipe :"
      recipes.each_with_index do |recipe, index|
        done_recipe = recipe.done ? "[X]" : "[ ]"
        puts "#{index + 1} - #{done_recipe} #{recipe.name} #{recipe.description} #{recipe.rating}"
      end
      puts "Which recipe do you want to mark ?"
    begin
      recipe_id = gets.chomp.to_i - 1
    rescue ArgumentError
      puts "Ce n'est pas un id correct"
    end

    recipe_id
  end

  def get_one_recipe
    puts 'Which recipe details do you want to print ?'
    print "> "
    return gets.chomp
  end

  def print_one_recipe(index, recipe)
    puts "#{index} - #{recipe.name} : description: #{recipe.description} - rating : #{recipe.rating}"
  end

  def ask_for(something)
    puts "What's the #{something} ?"
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
      done_recipe = recipe.done ? "[X]" : "[ ]"
      puts "#{index + 1} - #{done_recipe} #{recipe.name} - #{recipe.description} - #{recipe.rating}"
    end
  end
end

