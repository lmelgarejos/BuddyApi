class DriverSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :home_address, :home_zip_code, :work_address, :work_zip_code, :license_number, :email, :phone_number, :user_id

  has_many :trips
  has_many :cars

  belongs_to :user
end
