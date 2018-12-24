class MypagesController < ApplicationController

  def deliver_address
  end

  def identification
  end

  def email_password
  end


  def notification
  end

  def support
  end

  def point
  end

  def sales
  end

  def main
  end

  def logout
  end

  def card
  end

  def info
  end

  def sellingItem
    @item = Item.find(params[:id])
  end

  def exhibitionItemSelling
  end

  def exhibitionItemTransaction
  end

  def exhibitionItemSold
  end

end
