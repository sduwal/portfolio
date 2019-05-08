class User < ApplicationRecord
    has_and_belongs_to_many :address
    has_many :experiences
    has_many :personalprojects
    has_many :personalawards
    has_many :educations

    validates :name, :dob, :address, presence: true
    validate :dob, :validate_date

    def validate_date
        unless dob<Date.current
            errors.add(:dob,"must be today or before") 
        end
    end
end
