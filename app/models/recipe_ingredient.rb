class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  validates_presence_of :recipe_id
  validates_presence_of :ingredient_id

  validates_presence_of :quantity
  validates_presence_of :unit

  def ingredient_name
    self.try(:ingredient).try(:name)
  end

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by(name: name)
  end

end
