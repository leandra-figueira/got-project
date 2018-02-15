class DropPersonagem < ActiveRecord::Migration[5.1]
  def change
    drop_table :personagems
  end
end
