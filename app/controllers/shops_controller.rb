class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]
  before_action :set_shop, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:show, :edit]
  
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

  def edit
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to root_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :shop_url, :image).merge(user_id: current_user.id)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless current_user.id == @shop.user_id
  end
end
