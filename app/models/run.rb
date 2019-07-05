class Run < ApplicationRecord
  belongs_to :user
  belongs_to :charity

  validates :distance, :duration, :charity_id, presence: true
end
