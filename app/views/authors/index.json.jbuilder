json.array!(@authors) do |author|
  json.extract! author, :name, :email
  json.url author_url(author, format: :json)
end
