json.array!(@albumtwos) do |albumtwo|
  json.extract! albumtwo, :id, :title
  json.url albumtwo_url(albumtwo, format: :json)
end
