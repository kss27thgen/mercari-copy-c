class RemoveSellerIdFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :seller_id
    remove_column :items, :buyer_id
  end
end
