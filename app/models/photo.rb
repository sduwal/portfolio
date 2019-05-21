class Photo < ApplicationRecord
    belongs_to :user

    validates :link, :description, :user, presence: true
    paginates_per 2 
    max_paginates_per 100
end
