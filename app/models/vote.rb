class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :location

  as_enum :vote_type, approve:1, neutral:2, disapprove:3 
end
