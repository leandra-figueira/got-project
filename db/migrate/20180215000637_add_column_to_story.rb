class AddColumnToStory < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :book_id, :integer
    add_column :stories, :character_id, :integer
  end
end
