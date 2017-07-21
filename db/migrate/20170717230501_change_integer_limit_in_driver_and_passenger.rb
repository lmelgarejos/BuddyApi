class ChangeIntegerLimitInDriverAndPassenger < ActiveRecord::Migration[5.1]
  def change
    change_column :passengers, :home_zip_code, :integer, limit: 8
    change_column :passengers, :work_zip_code, :integer, limit: 8
    change_column :passengers, :phone_number, :string

    change_column :drivers, :home_zip_code, :integer, limit: 8
    change_column :drivers, :work_zip_code, :integer, limit: 8
    change_column :drivers, :phone_number, :string

  end
end
