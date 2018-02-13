class RemoveSeasonIdFromEpisodes < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :season_id, :integer
  end
end
