class Passenger < ApplicationRecord
  has_many :trips
  # has_many :groups

  # belongs_to :trip, inverse_of: :passenger
  # belongs_to :group, inverse_of: :passenger
end
