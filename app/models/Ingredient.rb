class Ingredient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def allergen_count
    self.allergens.count
  end

  def self.most_common_allergen
    Ingredient.all.sort_by do |ingredient|
      ingredient.allergen_count
    end[-1]
  end

end
