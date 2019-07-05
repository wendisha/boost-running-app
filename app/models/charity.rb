class Charity < ApplicationRecord
  has_many :runs
  has_many :users, through: :runs

  validates :name, :description, presence: true
  validate :not_a_duplicate, on: :create
  
  def not_a_duplicate
    errors.add(:name, "is already a listed charity.") if Charity.find_by(name: name)

  end
end
