class RemoveShoplistIdToShops < ActiveRecord::Migration[6.0]
  def change
    remove_column :shops, :shoplist_id, :integer
  end
end
