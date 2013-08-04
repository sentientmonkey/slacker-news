class CommentSerializer < ActiveModel::Serializer
  attributes :comment_id, :rel, :body

  def comment_id
    object.id
  end

  def rel
    api_link_comment_url object.link, object
  end

  has_one :author
end
