json.array!(@albumtens) do |albumten|
  json.extract! albumten, :id, :title
  json.url albumten_url(albumten, format: :json)
end
