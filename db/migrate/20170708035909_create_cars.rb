class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :available_seats
      t.string :model

      t.belongs_to :driver, index: true
      # t.belongs_to :user, index: true
      # t.belongs_to :driver, index: true
      # t.belongs_to :trip, index: true

      t.timestamps
    end
  end
end
