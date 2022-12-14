class User < ApplicationRecord
  has_many :api_keys, as: :bearer
  
  has_secure_password
  has_many :votes

  validates :first_name, presence: true
  validates :last_name, presence: true
end
