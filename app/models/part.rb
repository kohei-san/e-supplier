ActiveRecord::Base.extend ActiveHash::Associations::ActiveRecordExtensions
class Part < ApplicationRecord
  
  with_options presence: true do
    validates :name
    validates :info
    validates :material_id
    validates :processing_id
    validates :deadline_id
  end

  has_one_attached :image
  belongs_to :buyer
  belongs_to :deadline
  belongs_to :processing
  belongs_to :material
end
