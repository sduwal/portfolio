class Experience < ApplicationRecord
    has_and_belongs_to_many :address
    belongs_to :user
    
    validates :title, :company, :start, :user_id, :address, :description, presence: true
end
