class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.belongs_to :trip, index: true
      t.belongs_to :passenger, index: true

      t.timestamps
    end
  end
end
