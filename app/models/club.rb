class Club < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '英語クラブ' },
    { id: 3, name: 'オカリナクラブ' },
    { id: 4, name: '合唱クラブ' },
    { id: 5, name: 'テニスクラブ' },
    { id: 6, name: 'パソコン講座' },
  ]

  include ActiveHash::Associations
  has_many :posts
  
end