json.array!(@posts) do |post|
  json.extract! post, :url, :description, :author_id, :published, :published_at
end
