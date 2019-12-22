class City < ApplicationRecord
  belongs_to :country
  has_many :users
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  validates  :post_code, :name, presence: true
  validates_associated :country
end
