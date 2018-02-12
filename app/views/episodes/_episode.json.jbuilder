json.extract! episode, :id, :season_id, :episode_number, :name, :date, :summary, :created_at, :updated_at
json.url episode_url(episode, format: :json)
