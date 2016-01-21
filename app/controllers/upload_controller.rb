class UploadController < ApplicationController
  def get_image
    @picture = Picture.new
  end
  def save_picture
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to action: 'show_image', id: @picture.id
    else
      render action: :get_image
    end
  end
  def picture
    @picture = Picture.find(params[:id])
    send_data(@picture.data, filename: @picture.name, type: @picture.content_type, disposition: "inline")
  end
  def show_image
    @picture = Picture.find(params[:id])
  end

  private
    def picture_params
      params.require(:picture).permit(:comment, :uploaded_picture)
    end
end
