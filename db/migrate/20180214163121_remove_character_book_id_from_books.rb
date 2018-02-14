class RemoveCharacterBookIdFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :character_book_id, :integer
  end
end
