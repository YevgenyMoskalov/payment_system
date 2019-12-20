class Bill < ApplicationRecord
  has_one :manager_notification
  has_one :bill_request
  has_many :bill_requests
  has_many :transaction
  belongs_to :user
end
