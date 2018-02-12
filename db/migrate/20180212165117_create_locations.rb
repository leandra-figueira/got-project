class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :continent
      t.string :city
      t.integer :character_location_id

      t.timestamps
    end
  end
end
