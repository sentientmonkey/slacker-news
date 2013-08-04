require "test_helper"

describe PostsController do
  fixtures :posts

  it "should get index" do
    get :index
    assert_response :success
  end

  it "should get show" do
    get :show, id: posts(:one).id, format: "json"
    assert_response :success
  end

end
