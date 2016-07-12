json.array!(@albumsixes) do |albumsix|
  json.extract! albumsix, :id, :title
  json.url albumsix_url(albumsix, format: :json)
end
