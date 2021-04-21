class Deadline < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: '特急:1~3日'},
    {id: 2, name: '1週間以内'},
    {id: 3, name: '2週間以内'},
    {id: 4, name: '3週間以内'},
    {id: 5, name: '1ヶ月以内'},
    {id: 6, name: '2ヶ月以内'},
    {id: 7, name: '2ヶ月以上'}
  ]

  include ActiveHash::Associations
  has_many :parts
end