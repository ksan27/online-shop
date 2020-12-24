class ShopListsController < ApplicationController
  def index
    @shoplists = ShopList.all
  end
end
