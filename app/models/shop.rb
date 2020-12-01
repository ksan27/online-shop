class Shop < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :image
    validates :name, format: {with: /\A[ぁ-んァ-ン一-龥][a-zA-Z0-9]+\z/, message:"は登録出来ない値です"}
    validates :shop_url, format: {with: /http(s)?:\/\/([-\w]+\.)+[-\w]+(\/[-\w.\/?%&=]*)?/, message:"は登録出来ない値です"}
  end
end
