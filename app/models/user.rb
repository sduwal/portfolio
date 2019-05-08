class User < ApplicationRecord
    has_many :experience
    has_many :education
    has_many :personalprojects
    has_many :personalaward

    validates :name, :dob, presence: true
    validate :dob, :validate_date

    def validate_date
        unless dob<Date.current
            errors.add(:dob,"must be today or before") 
        end
    end
end
