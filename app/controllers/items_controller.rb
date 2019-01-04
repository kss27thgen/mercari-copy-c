class ItemsController < ApplicationController

  def new
    @item = Item.new
    4.times { @item.item_images.build }
  end

  def create
    @item = Item.new(create_params)
    if @item.save
      redirect_to root_path, notice:"商品を出品しました"
    else
      render :purchase, alert:"商品が出品できませんでした。"
    end
  end

  def purchase
    @item = Item.find(params[:id])
    @images = @item.item_images
  end

  private
  def create_params
  params.require(:item).permit(:name, :explaination, :price, :status, :shipping_fare, :shipping_region, :shipping_schedule, :shipping_method, :size, item_images_attributes: [:item_images]).merge(seller_id: current_user.id, buyer_id: 1)
  end
end
