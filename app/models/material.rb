class Material < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'FC'},
    {id: 2, name: 'SS'},
    {id: 3, name: 'SUS'},
    {id: 4, name: 'A'},
    {id: 5, name: 'BC'},
    {id: 6, name: '##'},
    {id: 7, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :parts
end