class CreateSnsCredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :sns_credentials do |t|
      t.string  :uid
      t.string  :provider
      t.references  :user ,foreign_key: true
      t.string  :access_token
      t.string  :access_secret
      t.timestamps
    end
  end
end
