class CreateItemCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :item_categories do |t|
      t.string :top_category, null: false
      t.string :mid_category, null: false
      t.string :bottom_category, null: false
      t.timestamps
    end
  end
end
