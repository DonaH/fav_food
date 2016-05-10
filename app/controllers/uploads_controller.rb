class UploadsController < ApplicationController
  def new
  end

  def create
    @picture = Picture.new(picture_params)

    if @friend.save
      redirect_to @picture, notice: 'Picture was successfully created.'
    else
      render action: 'new'
  end

  private

  def index
  end
end

class FriendsController < ApplicationController
  # Other CRUD actions omitted

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to @friend, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:avatar, :name)
  end
end
