class ToppagesController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC").limit(4)
  end

  def show
    @item = Item.find(params[:id])
    @images = @item.item_images
    @anotheritems = Item.where(seller: @item.seller).where.not(id: @item)
  end

  def small_category_show
  # params[:id]をScateのidとして取得
    # 選ばれたScateの1つのインスタンス
    @selected_Scate = SmallCategory.find(params[:id])
    # 選ばれたScate全アイテムのインスタンス配列
    @selected_cate_items = @selected_Scate.items
  end

  def middle_category_show
  # params[:id]をMcateのidとして取得
    # 選ばれたMcateの1つのインスタンス
    @selected_Mcate = MiddleCategory.find(params[:id])
    # 選ばれたMcateに紐づくScateのインスタンス配列
    @related_Scates = @selected_Mcate.small_categories
      # 上配列に紐づく(選ばれたMcateの全)アイテムのインスタンス配列(多次元配列)
      @selected_cate_items = []
      @related_Scates.each do |related_Scate|
        @selected_cate_items << related_Scate.items
      end
      # 上配列を平坦化
      @selected_cate_items.flatten!
  end

  def large_category_show
  # params[:id]をLcateのidとして取得
    # 選ばれたLcateの1つのインスタンス
    @selected_Lcate = LargeCategory.find(params[:id])
    # 選ばれたLcateに紐づくMcateのインスタンス配列
    @related_Mcates = @selected_Lcate.middle_categories
      # 上配列に紐づくScateのインスタンス配列(多次元配列)
      @related_Scates = []
      @related_Mcates.each do |related_Mcate|
        @related_Scates << related_Mcate.small_categories
      end
      # 上配列を平坦化
      @related_Scates.flatten!
        # 上配列に紐づく(選ばれたLcateの全)アイテムのインスタンス配列(多次元配列)
        @selected_cate_items = []
        @related_Scates.each do |related_Scate|
          @selected_cate_items << related_Scate.items
        end
        # 上配列を平坦化
        @selected_cate_items.flatten!
  end
end
