json.array!(@addresses) do |address|
  json.extract! address, :id, :name, :reference, :alias, :favourite, :profile_id, :district_id
  json.url address_url(address, format: :json)
end
