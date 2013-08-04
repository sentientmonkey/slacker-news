require "test_helper"

describe Api::CommentsController do
  fixtures :links, :comments, :authors

  let(:link){ comment.link }
  let(:comment){ comments(:one) }
  let(:author){ authors(:two) }

  let(:params) do
    {body: "this is my comment!",
     author_id: authors(:two).id}
  end

  it "should get index" do
    get :index, link_id: link.id, format: "json"
    assert_response :success
  end

  it "should get show" do
    get :show, link_id: link.id, id: comment.id, format: "json"
    assert_response :success
  end

  it "should get create" do
    post :create, link_id: link.id, comment: params, format: "json"
    assert_response :success
  end

  it "should get update" do
    put :update, link_id: link.id, id: comment.id, comment: params, format: "json"
    assert_response :success
  end

  it "should get destroy" do
    delete :destroy, link_id: link.id, id: comment.id, format: "json"
    assert_response :success
  end

end
