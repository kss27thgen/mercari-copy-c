class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  has_many :item_images
  has_one :settlement
  accepts_nested_attributes_for :item_images
end
