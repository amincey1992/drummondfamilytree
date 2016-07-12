json.array!(@albumsevens) do |albumseven|
  json.extract! albumseven, :id, :title
  json.url albumseven_url(albumseven, format: :json)
end
