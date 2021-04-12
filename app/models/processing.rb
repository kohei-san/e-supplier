class Processing < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: '複数'},
    {id: 2, name: '切削'},
    {id: 3, name: '表面処理'},
    {id: 4, name: '熱処理'},
    {id: 5, name: '##'},
    {id: 6, name: '##'},
    {id: 7, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :parts
end