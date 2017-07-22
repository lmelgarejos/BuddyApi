class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :home_address, :home_zip_code, :work_address, :work_zip_code, :license_number, :email, :phone_number, :user_id
  belongs_to :user

  has_many :groups
  has_many :trips, through: :groups
end
