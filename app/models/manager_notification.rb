class ManagerNotification < ApplicationRecord
  belongs_to :manager_attr
  belongs_to :bill
  validates :message, presence: true
  validates_associated :manager, :bill
end
