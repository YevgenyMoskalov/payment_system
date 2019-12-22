class ManagerNotification < ApplicationRecord
  belongs_to :manager
  belongs_to :bill
  validates :message, presence: true
  validates_associated :manager, :bill
end
