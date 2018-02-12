class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :house
      t.integer :character_book_id
      t.integer :character_location_id

      t.timestamps
    end
  end
end
