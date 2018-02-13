class AddSeasonRefToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_reference :episodes, :season, foreign_key: true
  end
end
