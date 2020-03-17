class BillRequest < ApplicationRecord
  belongs_to :manager
  belongs_to :bill
  # validates_associated :manager, :bill
  validates :message, presence: true
end
