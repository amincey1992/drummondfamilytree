json.array!(@albumones) do |albumone|
  json.extract! albumone, :id, :title
  json.url albumone_url(albumone, format: :json)
end
