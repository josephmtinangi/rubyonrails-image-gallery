class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @images = @category.images
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = 'Category added'

      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
