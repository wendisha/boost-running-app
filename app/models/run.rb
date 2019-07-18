class Run < ApplicationRecord
  
  belongs_to :user
  belongs_to :charity

  validates :distance, :duration, :charity_id, presence: true

  def charity_attributes=(attributes)
    self.charity = Charity.find_or_create_by(attributes) if !attributes['name'].empty?
    self.charity
  end

end
