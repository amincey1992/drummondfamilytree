json.array!(@forums) do |forum|
  json.extract! forum, :id, :title, :entry
  json.url forum_url(forum, format: :json)
end
