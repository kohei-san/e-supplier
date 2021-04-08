class Supplier < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # with_options presense: true do
  #   validates :name,              uniqueness: true
  #   validates :phone_number,      numericality: { only_integer: true }, length: { maximum: 11 }
  #   validates :last_name
  #   validates :first_name
  #   validates :last_name_kana,    format: {with: /\A[ア-ン]+\z/}
  #   validates :first_name_kana,   format: {with: /\A[ア-ン]+\z/}
  #   validates :factory_name
  #   validates :factory_name_kana, format: {with: /\A[ア-ン]+\z/}
  #   validates :prefecture_id,     numericality: { other_than: 0 }
  #   validates :profile
  # end
end
