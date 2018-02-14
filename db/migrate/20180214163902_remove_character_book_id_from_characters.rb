class RemoveCharacterBookIdFromCharacters < ActiveRecord::Migration[5.1]
  def change
    remove_column :characters, :character_book_id, :integer
  end
end
