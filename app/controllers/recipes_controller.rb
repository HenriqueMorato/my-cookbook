class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show]

  def show
  end

  def new
    @recipe = Recipe.new
    @cuisines = Cuisine.all
    @recipe_type = RecipeType.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_url(@recipe)
    else
      flash[:error] = 'Você deve informar todos os dados da receita'
      @recipe_type = RecipeType.all      
      @cuisines = Cuisine.all
      render :new
    end
  end

  private
   def set_recipe
     @recipe = Recipe.find(params[:id])
   end

   def recipe_params
        params.require(:recipe).permit(:title, :recipe_type_id, :cuisine_id,
          :difficulty, :cook_time, :ingredients, :method)
    end
end
