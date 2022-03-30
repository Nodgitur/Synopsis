class Meeting < ApplicationRecord
  # Meetings should be unique to each user
  belongs_to :user
end
