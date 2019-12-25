class Bill < ApplicationRecord
  has_one :manager_notification
  has_one :bill_request
  has_many :bill_requests
  has_many :activities
  belongs_to :client_attr

  #validates :amount, :bills_type, :percent, :amount_limit, :regular_replenishment_amount, presence: true
  validates :percent, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
