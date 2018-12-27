class ItemsController < ApplicationController

  def new
    @item = Item.new
    4.times { @item.item_images.build }
    @lc = LargeCategory.all
    @mc = MiddleCategory.all
    @sc = SmallCategory.all
    @middle_categories = MiddleCategory.all
    gon.l_cate = LargeCategory.all
    gon.m_cate = MiddleCategory.all
    gon.s_cate = SmallCategory.all

    respond_to do |format|

      format.html
      format.json

    end
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
    render :layout => 'simpleLayout'
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
      flash[:notice] = "商品を削除しました"
    else
      flash[:notie] = "削除できませんでした"
    end
  end


  private
  def create_params
    params.require(:item).permit(:name, :explaination, :price, :status, :shipping_fare, :shipping_region, :shipping_schedule, :shipping_method, :size, :small_category_id, item_images_attributes: [:item_images]).merge(seller_id: current_user.id, buyer_id: 1)
  end
end
