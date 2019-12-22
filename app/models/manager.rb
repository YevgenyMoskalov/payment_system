require 'bcrypt'

class Manager < ApplicationRecord
  include BCrypt

  has_many :manager_notifications
  has_many :bill_requests

  attr_accessor :password
  validates :first_name, :last_name, :nickname, :email, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows letters" }
  validates :nickname, :email, uniqueness: true
  validates_length_of :password, :nickname, in: 6..20, on: :create

  before_save :encrypted_password, if: proc { |u| !u.password.blank? }

  protected

  def encrypted_password
    self.salt = BCrypt::Engine.generate_salt
    self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
  end
end
