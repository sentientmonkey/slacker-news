require "test_helper"

describe Api::CommentsController do
  fixtures :posts, :comments, :authors

  let(:a_post){ comment.post }
  let(:comment){ comments(:one) }
  let(:author){ authors(:two) }

  let(:params) do
    {body: "this is my comment!",
     author_id: authors(:two).id}
  end

  it "should get index" do
    get :index, post_id: a_post.id, format: "json"
    assert_response :success
  end

  it "should get show" do
    get :show, post_id: a_post.id, id: comment.id, format: "json"
    assert_response :success
  end

  it "should get create" do
    post :create, post_id: a_post.id, comment: params, format: "json"
    assert_response :success
  end

  it "should get update" do
    put :update, post_id: a_post.id, id: comment.id, comment: params, format: "json"
    assert_response :success
  end

  it "should get destroy" do
    delete :destroy, post_id: a_post.id, id: comment.id, format: "json"
    assert_response :success
  end

end
