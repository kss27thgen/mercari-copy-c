class ItemImage < ApplicationRecord
  belongs_to :item
  mount_uploader :item_images, ItemImageUploader
end
