json.array!(@whips) do |whip|
  json.extract! whip, :id, :name, :email, :model, :year, :integer, :mods
  json.url whip_url(whip, format: :json)
end
