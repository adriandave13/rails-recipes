class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, :through => :recipe_ingredients

  validates_presence_of :name
  validates_uniqueness_of :name

  def recipe_ingredients=(recipe_ingredients)
    recipe_ingredients.each do |recipe_ingredient|
      puts "Recipe Ingredient: " + recipe_ingredient.to_s
      if !recipe_ingredient[:id].blank?
        ri = RecipeIngredient.find_by_id(recipe_ingredient[:id])
        puts "RI1: " + ri.to_s
      else
        ri = RecipeIngredient.new
        self.recipe_ingredients << ri
        puts "RI2: " + ri.to_s
      end
      if recipe_ingredient[:delete] != "1"
        puts "RID: " + recipe_ingredient[:delete].to_s
        puts "RIID: " + ri.id.to_s
        puts "RIN: " + recipe_ingredient[:ingredient_name].to_s
        puts "RIQ: " + recipe_ingredient[:quantity].to_s
        puts "RIU: " + recipe_ingredient[:unit].to_s
        ri.update(ingredient_name: recipe_ingredient[:ingredient_name], quantity: recipe_ingredient[:quantity], unit: recipe_ingredient[:unit])
      else
        ri.destroy
      end
    end
  end

end
