class User < ApplicationRecord
  # :confirmable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
  self.inheritance_column = :user_type
end

class Client < User; end
class Manager < User; end
