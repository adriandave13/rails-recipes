class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe was successfully created."
      redirect_to @recipe
    else
      render :action => 'new'
    end
  end

  def update
    @recipe = Recipe.update(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe was successfully updated."
      redirect_to @recipe
    else
      render :action => 'edit'
    end
  end

  def destroy
    @recipe.destroy
    flash[:notice] = "Recipe was successfully destroyed."
    redirect_to recipes_url
  end

  private
  
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :instructions)
    end

end
