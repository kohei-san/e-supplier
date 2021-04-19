class Material < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'FC系'},
    {id: 2, name: 'SS系'},
    {id: 3, name: 'SUS系'},
    {id: 4, name: 'Al系'},
    {id: 5, name: '銅系'},
    {id: 6, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :parts
end