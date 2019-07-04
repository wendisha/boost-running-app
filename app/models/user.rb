class User < ApplicationRecord
  has_many :runs
  has_many :charities, through: :runs
  validates :username, presence: true
  validates :email, presence: true

  has_secure_password
end
