class Item < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: 'sellser_id'
  belongs_to :buyer, class_name: "User", foreign_key:  'buyer_id'
  has_many :item_images
end
