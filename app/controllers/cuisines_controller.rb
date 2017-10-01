class CuisinesController < ApplicationController

  before_action :set_cuisine, only: [:show]

  def show
  end

  private
   def set_cuisine
     @cuisine = Cuisine.find(params[:id])
   end
end
