require "test_helper"

describe Api::PostsController do
  fixtures :posts, :authors

  let(:a_post){ posts(:one) }

  let(:params) do
    {url: "http://example.com",
     description: "An example site",
     author_id: authors(:one).id}
  end

  it "should get show" do
    get :show, id: a_post.id, format: "json"
    assert_response :success
  end

  it "should get index" do
    get :index, format: "json"
    assert_response :success
  end

  it "should post create" do
    post :create, post: params, format: "json"
    assert_response :success
  end

  it "should put update" do
    put :update, id: a_post.id, post: params, format: "json"
    assert_response :success
  end

  it "should delete destroy" do
    delete :destroy, id: a_post.id, format: "json"
    assert_response :success
  end

end
