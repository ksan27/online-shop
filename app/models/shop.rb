class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  belongs_to :user
  has_one_attached :image
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :image
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥a-zA-Z0-9ａ-ｚ０-９Ａ-Ｚ]+\z/, message: 'は登録出来ない値です' }
    validates :shop_url, format: { with: %r{http(s)?://([-\w]+\.)+[-\w]+(/[-\w./?%&=]*)?}, message: 'は登録出来ない値です' }
  end
  validates :genre_id, numericality: { other_than: 1 }

  def self.search(search)
    if search != ''
      Shop.where('name LIKE(?)', "%#{search}%")
    else
      Shop.all
    end
  end

  def previous
    user.shops.order('created_at desc, id desc').where('created_at <= ? and id < ?', created_at, id).first
  end

  def next
    user.shops.order('created_at desc, id desc').where('created_at >= ? and id > ?', created_at, id).reverse.first
  end
end
