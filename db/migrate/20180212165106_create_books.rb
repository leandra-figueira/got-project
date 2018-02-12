class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :character_book_id

      t.timestamps
    end
  end
end
