class LinkSerializer < ActiveModel::Serializer
  attributes :link_id, :rel, :url, :published_at

  def link_id
    object.id
  end

  def rel
    api_link_url object
  end

  has_one :author
  has_many :comments
end
