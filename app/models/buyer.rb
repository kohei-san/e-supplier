class Buyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name ,              uniqueness: {case_sensitive: true}
    validates :phone_number,      numericality: { only_integer: true }, length: { maximum: 11 }
    validates :last_name
    validates :first_name
    validates :last_name_kana,    format: {with: /\A[ァ-ヴー]+\z/}
    validates :first_name_kana,   format: {with: /\A[ァ-ヴー]+\z/}
    validates :company_name
    validates :company_name_kana, format: {with: /\A[ァ-ヴー]+\z/}
    validates :prefecture_id,     numericality: { other_than: 0 }
    validates :profile
  end

  has_many :parts

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end