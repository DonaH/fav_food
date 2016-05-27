class UploadsController < ApplicationController
  def new
  end

  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to @picture, notice: 'Picture was successfully created.'
    else
      render action: 'new'
  end

  private

  def index
  end

  def picture_params
    params.require(:picture).permit(:picture)
end
