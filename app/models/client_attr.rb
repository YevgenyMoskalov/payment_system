class ClientAttr < ApplicationRecord
  validates :first_name, :last_name, :gender, :birthday, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  # validates_associated :city
  # belongs_to :city
  has_many :bills

  belongs_to :client
end
