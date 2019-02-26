require_relative '../config/environment.rb'

guy = User.new("Guy Fieri")
masa = User.new("Masa")

dough = Ingredient.new("Dough")
tomato = Ingredient.new("Tomato")
cheese = Ingredient.new("Mozzerella Cheese")
bacon = Ingredient.new("Bacon")
salt = Ingredient.new("Salt")
pepper = Ingredient.new("Pepper")
eggs = Ingredient.new("Egg")
pepperoni = Ingredient.new("Pepperoni")
pizza_array = [dough, tomato, cheese]
bacon_egg_cheese = [eggs, bacon, cheese, dough]
salt_and_bacon = [salt,bacon]
pepperoni_pizza_array = pizza_array+[pepperoni]

pizza = Recipe.new()
pizza.add_ingredient(pizza_array)
bacon_cheese_sandwich = Recipe.new()
bacon_cheese_sandwich.add_ingredient(bacon_egg_cheese)
salt_bacon = Recipe.new()
salt_bacon.add_ingredient(salt_and_bacon)
pepperoni_pizza = Recipe.new()
pepperoni_pizza.add_ingredient(pepperoni_pizza_array)

# guys_pizza = RecipeCard.new(guy, pizza, '2/24', 10)
guy.add_recipe_card(pizza, '2/24',10)
guy.add_recipe_card(bacon_cheese_sandwich, '1/19', 8)
guy.add_recipe_card(salt_bacon, '1/22', 7)
guy.add_recipe_card(pepperoni_pizza, '2/4', 9)
guy.declare_allergen(eggs)
guy.declare_allergen(pepper)
masa.add_recipe_card(salt_bacon, '9/1',5)

masa.declare_allergen(eggs)
masa.declare_allergen(tomato)

binding.pry
