json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :email, :mobilephone, :user_type_id
  json.url profile_url(profile, format: :json)
end
