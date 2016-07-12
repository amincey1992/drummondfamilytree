json.array!(@albumthrees) do |albumthree|
  json.extract! albumthree, :id, :title
  json.url albumthree_url(albumthree, format: :json)
end
