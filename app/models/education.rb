class Education < ApplicationRecord
  belongs_to :user
  belongs_to :address
  
  validates :school, :degree, :field, :from, :user, presence: true
end
