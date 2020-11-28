class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name,   null: false
      t.text :shop_url, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
