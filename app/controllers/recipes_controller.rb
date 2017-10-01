class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show]

  def show
  end

  def new
    @recipe = Recipe.new
    @cuisines = Cuisine.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_url(@recipe)
  end

  private
   def set_recipe
     @recipe = Recipe.find(params[:id])
   end

   def recipe_params
        params.require(:recipe).permit(:title, :recipe_type, :cuisine_id,
          :difficulty, :cook_time, :ingredients, :method)
    end
end
