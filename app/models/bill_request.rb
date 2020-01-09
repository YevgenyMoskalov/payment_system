class BillRequest < ApplicationRecord
  belongs_to :manager_attr
  belongs_to :bill
  validates_associated :manager, :bill
  validates :message, presence: true
end
