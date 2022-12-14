class Location < ApplicationRecord
  has_many :votes, dependent: :destroy

  validates :name, presence: true
end
