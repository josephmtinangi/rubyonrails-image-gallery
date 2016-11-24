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
    @category = Category.find(params[:id])
     @images = @category.images
  end
  
  def update
    @category = Category.find(params[:id])
    
    if @category.update(category_params)
    flash[:notice] = 'Category updated'

      redirect_to category_path(params[:id])
    else
      render 'edit'
    end
    
  end



  private
  def category_params
    params.require(:category).permit(:name)
  end
end
