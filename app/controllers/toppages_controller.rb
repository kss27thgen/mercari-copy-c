class ToppagesController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC").limit(4)
    # @images = ItemImage.all.order("created_at DESC").limit(4)
  end

  def show
  end
end





