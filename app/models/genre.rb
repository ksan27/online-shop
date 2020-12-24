class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'カジュアル' },
    { id: 3, name: 'ガーリー' },
    { id: 4, name: 'ボーイッシュ' },
    { id: 5, name: 'きれいめ系' },
    { id: 6, name: 'アクセサリー' },
    { id: 7, name: 'コスメ' },
    { id: 8, name: '雑貨' }
  ]

  include ActiveHash::Associations
  has_many :shops
  has_many :shop_list
end
