class DropLivro < ActiveRecord::Migration[5.1]
  def change
    drop_table :livros
  end
end
