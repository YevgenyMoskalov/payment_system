class Client < User
  has_one :client_attr, dependent: :destroy
  accepts_nested_attributes_for :client_attr
end