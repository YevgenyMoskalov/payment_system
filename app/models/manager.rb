class Manager < User
  has_one :manager_attr, dependent: :destroy
end