class AddColumnItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :seller
    add_reference :items, :buyer
  end
end
