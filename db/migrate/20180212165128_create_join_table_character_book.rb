class CreateJoinTableCharacterBook < ActiveRecord::Migration[5.1]
  def change
    create_join_table :characters, :books do |t|
      t.index [:character_id, :book_id]
      t.index [:book_id, :character_id]
    end
  end
end
