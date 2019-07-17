class User < ApplicationRecord
  
  has_many :runs
  has_many :charities, through: :runs
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  scope :charity_runs, -> { joins(:runs).group(:charity_id) }

  has_secure_password

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex
    end
  end

end
