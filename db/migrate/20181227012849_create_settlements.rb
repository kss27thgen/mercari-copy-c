class CreateSettlements < ActiveRecord::Migration[5.1]
  def change
    create_table :settlements do |t|
      t.references  :user, null: false
      t.references  :item, null:false
      t.timestamps
    end
  end
end
