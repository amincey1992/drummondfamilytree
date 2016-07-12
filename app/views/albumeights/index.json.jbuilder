json.array!(@albumeights) do |albumeight|
  json.extract! albumeight, :id, :title
  json.url albumeight_url(albumeight, format: :json)
end
