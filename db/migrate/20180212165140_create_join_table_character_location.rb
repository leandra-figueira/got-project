class CreateJoinTableCharacterLocation < ActiveRecord::Migration[5.1]
  def change
    create_join_table :characters, :locations do |t|
      t.index [:character_id, :location_id]
      # t.index [:location_id, :character_id]
    end
  end
end
