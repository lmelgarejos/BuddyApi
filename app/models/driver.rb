class Driver < ApplicationRecord
  has_many :trips
  has_many :cars

  belongs_to :user
end
