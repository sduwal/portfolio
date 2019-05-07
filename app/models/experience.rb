class Experience < ApplicationRecord
  belongs_to :address
  belongs_to :user

  validates :title, :company, :start, :user_id, :description, presence: true
end
