json.array!(@albumfives) do |albumfife|
  json.extract! albumfife, :id, :title
  json.url albumfife_url(albumfife, format: :json)
end
