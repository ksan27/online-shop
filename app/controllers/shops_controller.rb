class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]
  before_action :move_to_index, only: [:show]
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

  def show
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :shop_url, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    @shop = Shop.find(params[:id])
    redirect_to root_path unless current_user.id == @shop.user_id
  end
end
