class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :date
      t.string :departure_time

      t.belongs_to :driver, index: true
      t.belongs_to :car, index: true
      t.belongs_to :passenger, index: true

      t.timestamps
    end
  end
end
