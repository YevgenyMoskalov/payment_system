class Client < User
  after_create :create_bill
  has_one :client_attr, dependent: :destroy
  has_many :bills
  accepts_nested_attributes_for :client_attr

  private

  def create_bill
    b = Bill.create(bills_type: 'private', amount: 10_000, expired_bill_at: Time.now.to_date, amount_limit: 999_999.99)
    self.bill = b
  end
end
