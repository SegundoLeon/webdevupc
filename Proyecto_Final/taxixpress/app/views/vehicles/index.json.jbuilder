json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :brand, :model, :plate, :status, :user_id, :vehicle_type_id
  json.url vehicle_url(vehicle, format: :json)
end

