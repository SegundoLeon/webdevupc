json.array!(@costs) do |cost|
  json.extract! cost, :id, :estimated_cost
  json.url cost_url(cost, format: :json)
end
