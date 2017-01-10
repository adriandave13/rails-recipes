class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  validates_presence_of :quantity
  validates_presence_of :unit
end
