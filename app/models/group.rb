class Group < ApplicationRecord
  # has_many :passengers, inverse_of: :group
  # has_many :trips, through: :passengers\

  belongs_to :trips, optional: true
  belongs_to :passengers, optional: true
end
