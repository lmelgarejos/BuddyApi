class TripSerializer < ActiveModel::Serializer
  attributes :date, :departure_time, :driver_id, :car_id
  belongs_to :car
  belongs_to :driver
  belongs_to :passenger

  # has_many :passengers
  # has_many :groups, through: :passengers
end
