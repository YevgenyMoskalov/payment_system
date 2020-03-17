class Manager < User
  has_one :manager_attr, dependent: :destroy
  has_many :bill_requests
end