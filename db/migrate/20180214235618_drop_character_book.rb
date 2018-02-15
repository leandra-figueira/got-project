class DropCharacterBook < ActiveRecord::Migration[5.1]
  def change
    drop_table :characterbooks
  end
end
