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
      redirect_to root_path, notice:"商品を出品しました"
      # render json: {message: 'success', itemId: @item.id}, status: 200
    else
      # render json: { error: @item.errors.full_messages.join(", ")}, status: 400
      render :purchase, alert:"商品が出品できませんでした。"
    end
  end

  def purchase
    render :layout => 'simpleLayout'
  end

  def search
    @items = Item.where('name LIKE(?) OR price LIKE(?) OR explaination LIKE(?)', "%#{params[:keyword]}%", "%#{params[:keyword]}%", "%#{params[:keyword]}%").limit(20)

    # @items = Item.page(params[:page]).per(5).order("created_at DESC")
    # @keyword = params[:keyword]
    # @search = Item.ransack(params[:q])  #追加
    # @result = @search.result
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.seller_id != current_user.id
      flash[:notice] = "権限がありません"
    elsif @item.destroy
      flash[:notice] = "商品を削除しました"
    else
      flash[:notice] = "削除できませんでした"
    end
    redirect_to root_path
  end

  private
  def create_params
    params.require(:item).permit(:name, :explaination, :price, :status, :shipping_fare, :shipping_region, :shipping_schedule, :shipping_method, :size, :small_category_id, item_images_attributes: [:item_images]).merge(seller_id: current_user.id, buyer_id: 1)
  end
end
