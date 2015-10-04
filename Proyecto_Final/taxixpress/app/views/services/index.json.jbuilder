json.array!(@services) do |service|
  json.extract! service, :id, :profile_id, :from_address_id, :to_address_id, :date_time, :payment, :passengers, :vehicle_type_id, :payment_method_id, :service_code, :vehicle_id, :rate, :experience, :status
  json.url service_url(service, format: :json)
end
