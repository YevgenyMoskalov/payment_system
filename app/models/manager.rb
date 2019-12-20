class Manager < ApplicationRecord
  has_many :manager_notifications
  has_many :bill_requests
end
