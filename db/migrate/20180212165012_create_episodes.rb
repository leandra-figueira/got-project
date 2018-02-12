class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :season_id
      t.integer :episode_number
      t.string :name
      t.date :date
      t.string :summary

      t.timestamps
    end
  end
end
