require 'test_helper'

describe Post do
  fixtures :posts

  let(:post){ posts(:one) }

  it "should unpublished on destroy" do
    post.destroy
    post.published.must_equal false
    Post.find(posts(:one)).must_equal posts(:one)
  end

end

