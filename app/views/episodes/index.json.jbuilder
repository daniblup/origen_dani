json.array!(@episodes) do |episode|
  json.extract! episode, :id, :number, :season, :synopsis, :serie_id
  json.url episode_url(episode, format: :json)
end
