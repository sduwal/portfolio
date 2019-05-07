class Personalaward < ApplicationRecord
  belongs_to :user

  validates :title, :issuer, :description, presence: true
end
