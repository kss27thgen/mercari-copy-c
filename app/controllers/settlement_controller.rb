class SettlementController < ApplicationController
  def create
    @item = Item.find(params[:format])
    @images = @item.item_images
    @settlement = Item.find(params[:format])
    @settlement.with_lock do
      Payjp.api_key = 'sk_test_90414862343d84d073c615a7'
      Payjp::Charge.create(
        amount: @settlement.price,
        card: params['payjp-token'],
        currency: 'jpy'
        )
    end
  end
end
