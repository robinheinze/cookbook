class TagsController < ApplicationController
  def index
    @tags = Tag.all
    @tag = Tag.new
    render('tags/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

  def create
    @tag = Tag.new(params[:tags])
    if @tag.save
      flash[:notice] = "The tag #{@tag.name} was successfully created."
      redirect_to("/tags")
    else
      @tags = Tag.all
      render('tags/index.html.erb')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(params[:tags])
      flash[:notice] = "The tag has been updated."
      redirect_to("/tags/#{@tag.id}")
    else
      render('tags/edit.html.erb')
    end

  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "The tag #{@tag.name} has been deleted."
  end


end
