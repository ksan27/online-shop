class CreateShopLists < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_lists do |t|
      t.string :name,   null: false
      t.text :shop_url, null: false
      t.integer :genre_id, null: false
      t.timestamps
    end
  end
end
