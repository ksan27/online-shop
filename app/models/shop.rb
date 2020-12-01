class Shop < ApplicationRecord
  with_options presence: true do
    validates :name, :shop_url
  end
end
