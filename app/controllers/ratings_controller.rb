class RatingsController < ApplicationController
  def create
    @rating = Rating.create(params[:ratings])
    flash[:notice] = "You have given #{@rating.recipe.name} a rating of #{@rating.value}"
    redirect_to("/recipes/#{@rating.recipe_id}")
  end
end
