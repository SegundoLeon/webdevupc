json.array!(@costs) do |cost|
  json.extract! cost, :id, :estimated_cost, :from_distrit_id, :to_distrit_id
  json.url cost_url(cost, format: :json)
end
