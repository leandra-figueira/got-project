class DropBooksCharacter < ActiveRecord::Migration[5.1]
  def change
    drop_table :books_characters
  end
end
