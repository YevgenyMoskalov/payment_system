class Country < ApplicationRecord
  has_many :cities
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }, presence: true
end
