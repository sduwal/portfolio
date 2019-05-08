class Address < ApplicationRecord
  validates :street, :city, :state, :zipcode, presence: true
  validate :state, :state_length_validator
  validates_length_of :zipcode, is: 5, message: "Zip code must be of length 5"

  def state_length_validator
    unless state.length == 2
      errors.add(:state, "must always le of length 2") 
    end
  end
end
