class CommentSerializer < ActiveModel::Serializer
  attributes :comment_id, :rel, :body

  def comment_id
    object.id
  end

  def rel
    api_post_comment_url object.post, object
  end

  has_one :author
end
