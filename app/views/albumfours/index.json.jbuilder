json.array!(@albumfours) do |albumfour|
  json.extract! albumfour, :id, :title
  json.url albumfour_url(albumfour, format: :json)
end
