class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
  validates :first_name, :last_name, :gender, :birthday, presence: true
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/,
                                    message: "Only allows letters" }
end
