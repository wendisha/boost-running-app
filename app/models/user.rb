class User < ApplicationRecord
  has_many :runs
  has_many :charities, through: :runs
end
