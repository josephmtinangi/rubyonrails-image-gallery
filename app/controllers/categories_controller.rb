class CategoriesController < ApplicationController
  def index
  end

  def show
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
    params.require(:categry).permit(:name)
  end
end
