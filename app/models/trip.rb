class Trip < ApplicationRecord
  belongs_to :car
  belongs_to :driver

  # has_many :groups, inverse_of: :trip
  # has_many :passengers, through: :groups
  belongs_to :passenger


  # belongs_to :driver, through: :car, class_name: :user, foreign_key: :user_id
  #
  # has_many :passengers
  # has_many :users, through: :passengers
  # has_one :car
  # has_one :driver, through: :car

end
