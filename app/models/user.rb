class User < ApplicationRecord
  
  has_many :runs
  has_many :charities, through: :runs
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  has_secure_password

end
