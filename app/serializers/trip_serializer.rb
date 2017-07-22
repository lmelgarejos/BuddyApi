class TripSerializer < ActiveModel::Serializer
  attributes :id, :date, :departure_time, :driver_id, :car_id
  belongs_to :car
  belongs_to :driver
  # belongs_to :passenger

  has_many :groups
  has_many :passengers, through: :groups
end
