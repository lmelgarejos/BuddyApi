class Passenger < ApplicationRecord
  belongs_to :user

  has_many :groups
  has_many :trips, through: :groups


  # belongs_to :trip, inverse_of: :passenger
  # belongs_to :group, inverse_of: :passenger
end
