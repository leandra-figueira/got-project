class CreateCharacterbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :characterbooks do |t|
      t.integer :character_id
      t.integer :book_id

      t.timestamps
    end
  end
end
