json.array!(@albumseights) do |albumseight|
  json.extract! albumseight, :id, :title
  json.url albumseight_url(albumseight, format: :json)
end
