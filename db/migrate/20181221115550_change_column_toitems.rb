class ChangeColumnToitems < ActiveRecord::Migration[5.1]
  def up
    change_column :items, :name, :string, null: true
    change_column :items, :explaination, :text, null: true
    change_column :items, :price, :integer, null: true
    change_column :items, :status, :integer, null: true
    change_column :items, :shipping_fare, :string, null: true
    change_column :items, :shipping_region, :integer, null: true
    change_column :items, :shipping_shcedule, :string, null: true
    change_column :items, :shipping_method, :string, null: true
    change_column :items, :size, :string, null: true
  end

  def down
    change_column :items, :name, :string, null: false
    change_column :items, :explaination, :text, null: false
    change_column :items, :price, :integer, null: false
    change_column :items, :status, :integer, null: false
    change_column :items, :shipping_fare, :string, null: false
    change_column :items, :shipping_region, :integer, null: false
    change_column :items, :shipping_shcedule, :string, null: false
    change_column :items, :shipping_method, :string, null: false
    change_column :items, :size, :string, null: false
  end

end
