class ItemsController < ApplicationController

  def new
    @item = Item.new
    @item.item_images.build
    @lc = LargeCategory.all
    @mc = MiddleCategory.all
    @sc = SmallCategory.all
    @middle_categories = MiddleCategory.all
    gon.l_cate = LargeCategory.all
    gon.m_cate = MiddleCategory.all
    gon.s_cate = SmallCategory.all

  end

  def create
    @item = Item.new(create_params)
    if @item.save
      # redirect_to root_path, notice:"商品を出品しました"
      render json: {message: 'success', itemId: @item.id}, status: 200
    else
      render json: { error: @item.errors.full_messages.join(", ")}, status: 400
      # render :purchase, alert:"商品が出品できませんでした。"
    end
  end

  def purchase
    render :layout => 'simpleLayout'
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end


  private
  def create_params
    params.require(:item).permit(:name, :explaination, :price, :status, :shipping_fare, :shipping_region, :shipping_schedule, :shipping_method, :size, :small_category_id, item_images_attributes: [:item_images]).merge(seller_id: current_user.id, buyer_id: 1)
  end
end
