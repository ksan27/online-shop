class AddShoplistIdToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :shoplist_id, :integer
  end
end
