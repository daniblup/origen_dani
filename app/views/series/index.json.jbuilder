json.array!(@series) do |series|
  json.extract! series, :id, :name, :year
  json.url series_url(series, format: :json)
end
