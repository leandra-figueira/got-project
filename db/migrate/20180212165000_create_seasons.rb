class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.integer :season_number
      t.date :premiere_date
      t.date :end_date
      t.string :summary

      t.timestamps
    end
  end
end
