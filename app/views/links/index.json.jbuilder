json.array!(@links) do |link|
  json.extract! link, :url, :description, :author_id, :published, :published_at
  json.url link_url(link, format: :json)
end
