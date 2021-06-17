ActiveRecord::Base.extend ActiveHash::Associations::ActiveRecordExtensions
class Part < ApplicationRecord
  
  with_options presence: true do
    validates :name,            length:       { maximum: 50 }
    validates :info,            length:       { maximum: 1000 }
    validates :material_id,     numericality: { other_than: 0 }
    validates :processing_id,   numericality: { other_than: 0 }
    validates :deadline_id,     numericality: { other_than: 0 }
    validates :image
  end

  has_one_attached :image
  belongs_to :buyer
  belongs_to :deadline
  belongs_to :processing
  belongs_to :material
end
