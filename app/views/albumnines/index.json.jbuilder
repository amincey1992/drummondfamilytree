json.array!(@albumnines) do |albumnine|
  json.extract! albumnine, :id, :title
  json.url albumnine_url(albumnine, format: :json)
end
