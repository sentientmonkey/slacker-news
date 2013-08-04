json.array!(@posts) do |post|
  json.extract! post, :url, :description, :author_id, :published, :published_at
  json.url post_url(post, format: :json)
end
