class Education < ApplicationRecord
    has_and_belongs_to_many :addresses
    belongs_to :user

    validates :school, :degree, :field, :from, :user, presence: true
end
