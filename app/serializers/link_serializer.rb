class LinkSerializer < ActiveModel::Serializer
  attributes :id, :rel, :url, :published_at

  def rel
    api_link_url object
  end

  has_one :author
  has_many :comments
end
