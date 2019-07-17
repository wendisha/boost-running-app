class Charity < ApplicationRecord

  has_many :runs
  has_many :users, through: :runs

  validates :name, :description, presence: true
  validate :not_a_duplicate, on: :create

end


