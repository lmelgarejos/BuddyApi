class PassengerSerializer < ActiveModel::Serializer
  attributes :username, :first_name, :last_name, :home_address, :home_zip_code, :work_address, :work_zip_code, :license_number, :email, :phone_number
  has_many :trips

  # belongs_to :trip
  # belongs_to :group
end
