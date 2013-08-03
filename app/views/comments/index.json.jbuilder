json.array!(@comments) do |comment|
  json.extract! comment, :link_id, :author_id, :body, :deleted
  json.url comment_url(comment, format: :json)
end
