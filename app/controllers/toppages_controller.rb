class ToppagesController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC").limit(4)
  end

  def show
    @item = Item.find(1)
    @image = ItemImage.all
  end

  def pay
    payjp.api_key = 'sk_test_90414862343d84d073c615a7
'
    Payjp::Charge.create(
    amount: 3500,
    card: params['pay-token'],
    currency: 'jpy'
    )
  end
end
