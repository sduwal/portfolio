class Address < ApplicationRecord
    has_and_belongs_to_many :users
    has_and_belongs_to_many :experiences
    has_and_belongs_to_many :educations

    validates :street, :city, :state, :zipcode, :country, presence: true
    validate :state, :state_length_validator
    validates_length_of :zipcode, is: 5, message: "Zip code must be of length 5"
  
    def state_length_validator
      unless state.length == 2
        errors.add(:state, "must always le of length 2") 
      end
    end
end
