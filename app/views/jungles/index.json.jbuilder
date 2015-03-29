json.array!(@jungles) do |jungle|
  json.extract! jungle, :id, :monkey, :eats
  json.url jungle_url(jungle, format: :json)
end
