class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = 'Image added'

      redirect_to images_path
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
  def image_params
    params.require(:image).permit(:image, :image_title, :image_file_size, :image_content_type, :image_description, :category_id, :remote_image_url)
  end
end
