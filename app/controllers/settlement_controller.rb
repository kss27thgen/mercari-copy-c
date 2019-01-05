class SettlementController < ApplicationController
  def create
    @item = Item.find(params[:id])
    @images = @item.item_images.first
    settlement = Item.find(params[:id])
    # binding.pry

    settlement.with_lock do
      Payjp.api_key = 'sk_test_90414862343d84d073c615a7'
      Payjp::Charge.create(
        amount: settlement.price,
        card: params['payjp-token'],
        currency: 'jpy'
        )
    end
  end
end
