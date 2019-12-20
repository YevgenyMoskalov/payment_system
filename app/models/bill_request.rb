class BillRequest < ApplicationRecord
  belongs_to :manager
  belongs_to :bill
end
