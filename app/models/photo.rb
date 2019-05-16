class Photo < ApplicationRecord
    belongs_to :user

    validates :link, :description, :user, presence: true
end
