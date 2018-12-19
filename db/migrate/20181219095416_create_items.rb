class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :explaination, null: false
      t.integer :price, null: false
      t.integer :status, null: false
      t.string :shipping_fare, null: false
      t.integer :shipping_region, null: false
      t.string :shipping_shcedule, null: false
      t.string :shipping_method, null: false
      t.string :size
      t.timestamps
    end
  end
end
