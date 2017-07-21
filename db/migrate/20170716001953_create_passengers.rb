class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :home_address
      t.integer :home_zip_code
      t.string :work_address
      t.integer :work_zip_code
      t.string :license_number
      t.string :email
      t.integer :phone_number

      # t.belongs_to :trip, index: true
      # t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
