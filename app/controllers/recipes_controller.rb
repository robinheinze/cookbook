class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipe = Recipe.new
    render('recipes/index.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipes])
    if @recipe.save
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/index.html.erb')
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipes])
      flash[:notice] = "Your recipe has been updated."
      redirect_to("/recipes/#{@recipe.id}")
    else
      render("/recipes/#{@recipe.id}/edit")
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "The recipe #{@recipe.name} has been deleted"
    redirect_to("/recipes/")
  end
end
