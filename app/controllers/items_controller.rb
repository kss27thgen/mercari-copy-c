class ItemsController < ApplicationController

  def new
  end

  def purchase
    render :layout => 'simpleLayout'
  end

  def itemEntry
    render :layout => 'simpleLayout'
  end
end
