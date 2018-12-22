class ToppagesController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC").limit(4)
  end

  def show
    @item = Item.find(1)
    @image = ItemImage.all
    # @user = Item.find(:id)
  end
end





