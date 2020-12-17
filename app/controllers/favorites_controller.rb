class FavoritesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!

  def create
    if  @post.user_id == current_user.id
      @favorite = Favorite.create(user_id: current_user.id, post_id: @post.id)
    end
  end

  def 
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: @post.id)
    @favorite.destroy
  end

  private
  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
