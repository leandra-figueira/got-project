class AddColumnToHistorium < ActiveRecord::Migration[5.1]
  def change
    add_column :historia, :livro_id, :integer
    add_column :historia, :personagem_id, :integer
  end
end
