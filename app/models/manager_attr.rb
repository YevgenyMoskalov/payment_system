class ManagerAttr < ApplicationRecord
  has_many :manager_notifications

  validates :first_name, :last_name, :nickname, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  validates :nickname, uniqueness: true

  belongs_to :manager
end
