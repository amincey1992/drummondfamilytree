json.array!(@comment_sells) do |comment_sell|
  json.extract! comment_sell, :id, :author, :comment_entry
  json.url comment_sell_url(comment_sell, format: :json)
end
