class Charity < ApplicationRecord

  has_many :runs
  has_many :users, through: :runs
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

end


