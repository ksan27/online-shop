class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @users = User.find(params[:id])
    @user = current_user

    favorites = Favorite.where(user_id: current_user.id).pluck(:shop_id)
    @favorite_list = Shop.find(favorites)
  end
end
