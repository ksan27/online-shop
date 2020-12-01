class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :shop_url, :image).merge(user_id: current_user.id)
  end
end
