class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
    @recipe.recipe_ingredients.build
  end

  def edit
    puts "Ingredients: " + @recipe.recipe_ingredients.to_s
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe was successfully created."
      redirect_to @recipe
    else
      flash[:alert] = "Error creating new recipe."
      render :action => 'new'
    end
  end

  def update
    @recipe = Recipe.update(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe was successfully updated."
      redirect_to @recipe
    else
      flash[:alert] = "Error updating recipe."
      render :action => 'edit'
    end
  end

  def destroy
    if @recipe.destroy
      flash[:notice] = "Recipe was successfully deleted."
      redirect_to posts_path
    else
      flash[:alert] = "Error deleting recipe."
    end
  end

  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      # Start
      puts params
      puts "Array: " + params[:recipe][:recipe_ingredient].to_s
      recipe_ingredients = params[:recipe][:recipe_ingredient]
      recipe_ingredients.each do |key, array|
        puts "#{key}: "
        puts array.to_s
      end
      # End
      params.require(:recipe).permit(:name, :instructions, :recipe_ingredient[])
    end

end
