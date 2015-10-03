json.array!(@costs) do |cost|
  json.extract! cost, :id, :estimated_cost, :from_district_id, :to_district_id
  json.url cost_url(cost, format: :json)
end
