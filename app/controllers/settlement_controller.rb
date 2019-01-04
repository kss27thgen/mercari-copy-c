class SettlementController < ApplicationController
  def create
    @item = Item.find(params[:format])
    @images = @item.item_images
    @settlement = Item.find(params[:format])
    @settlement.with_lock do
      Payjp.api_key = ENV['PAYJP_APP_SECRET']
      Payjp::Charge.create(
        amount: @settlement.price,
        card: params['payjp-token'],
        currency: 'jpy'
        )
    end
  end
end
