json.array!(@sells) do |sell|
  json.extract! sell, :id, :name, :email, :title, :description, :price
  json.url sell_url(sell, format: :json)
end
