class Recipe

  attr_accessor :ingredients
  @@all = []

  def initialize
    @ingredients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredient(ingredients)
    ingredients.each do |ingredient|
      self.ingredients << ingredient
    end
    self.ingredients
  end

  def recipecards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def users
    self.recipecards.map do |recipe_card|
      recipe_card.user
    end
  end

  def self.most_popular
    Recipe.all.sort_by do |recipe|
      recipe.users.uniq.length
    end[-1]
  end


  # def ingredients
  #   self.ingredients
  # end

end
