class Client < User
  has_one :client_attr, dependent: :destroy
end
