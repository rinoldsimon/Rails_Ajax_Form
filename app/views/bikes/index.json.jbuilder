json.array!(@bikes) do |bike|
  json.extract! bike, :id, :name, :color
  json.url bike_url(bike, format: :json)
end
