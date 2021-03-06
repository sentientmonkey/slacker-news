class PostSerializer < ActiveModel::Serializer
  attributes :post_id, :href, :url, :published_at

  def post_id
    object.id
  end

  def href
    api_post_url object
  end

  has_one :author
  has_many :comments
end
