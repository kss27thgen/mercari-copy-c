class ToppagesController < ApplicationController


  def index
  end

  def show
    @item = Item.find(1)
    @image = ItemImage.all
  end
end
