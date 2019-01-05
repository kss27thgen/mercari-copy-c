class ToppagesController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC").limit(4)
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.item_images
    @anotheritems = Item.where('seller_id = ? and id != ?', @item.seller, @item.id)
  end

  def category_index
    @large_categories = LargeCategory.all
    @middle_categories = MiddleCategory.all
    @small_categories = SmallCategory.all
  end

end

