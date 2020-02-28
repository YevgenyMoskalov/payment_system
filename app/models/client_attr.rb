class ClientAttr < ApplicationRecord
  after_commit :create_bill, on: :create
  validates :first_name, :last_name, :gender, :birthday, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  # validates_associated :city
  # belongs_to :city
  has_many :bills
  belongs_to :client

  private

  def create_bill
    attr_id = self.id
    Bill.create!(client_attr_id: :attr_id, bills_type: 'private', amount: 10_000, expired_bill_at: Time.now.to_date, amount_limit: 999_999.99)
  end
end
