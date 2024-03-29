class Supplier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :company_name,      uniqueness: true
    validates :company_name_kana, format: {with: /\A[ァ-ヴー]+\z/}
    validates :last_name
    validates :first_name
    validates :last_name_kana,    format: {with: /\A[ァ-ヴー]+\z/}
    validates :first_name_kana,   format: {with: /\A[ァ-ヴー]+\z/}
    validates :phone_number,      numericality: { only_integer: true }, length: { maximum: 11 }
    validates :prefecture_id,     numericality: { other_than: 0 }
    validates :address
  end

  validates :profile, length: { maximum: 1000 }

  has_one_attached :image

  geocoded_by :address
  after_validation :geocode

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
