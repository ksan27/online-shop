class FavoritesController < ApplicationController
  before_action :set_favorite_shop, only: [:create, :destroy]
  before_action :authenticate_user!

  def create
    if @shop.user_id == current_user.id
      @favorite = Favorite.create(user_id: current_user.id, shop_id: @shop.id)
      @favorite.save
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, shop_id: @shop.id)
    @favorite.destroy
  end

  private

  def set_favorite_shop
    @shop = Shop.find(params[:shop_id])
  end
end
