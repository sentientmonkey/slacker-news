class AuthorSerializer < ActiveModel::Serializer
  attributes :author_id, :href, :name, :email

  def author_id
    object.id
  end

  def href
    api_author_url object
  end
end
