class AuthorSerializer < ActiveModel::Serializer
  attributes :author_id, :rel, :name, :email

  def author_id
    object.id
  end

  def rel
    api_author_url object
  end
end
