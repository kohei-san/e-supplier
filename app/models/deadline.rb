class Deadline < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: '特急:1~3日'},
    {id: 2, name: '1週間'},
    {id: 3, name: '2週間'},
    {id: 4, name: '3週間'},
    {id: 5, name: '1ヶ月'},
    {id: 6, name: '1.5ヶ月'},
    {id: 7, name: '2ヶ月以上'}
  ]

  include ActiveHash::Associations
  has_many :parts
end