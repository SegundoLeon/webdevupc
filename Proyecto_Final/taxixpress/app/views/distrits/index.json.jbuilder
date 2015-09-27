json.array!(@distrits) do |distrit|
  json.extract! distrit, :id, :name
  json.url distrit_url(distrit, format: :json)
end
