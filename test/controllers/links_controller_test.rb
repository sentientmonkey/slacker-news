require "test_helper"

describe LinksController do
  fixtures :links

  it "should get index" do
    get :index
    assert_response :success
  end

  it "should get show" do
    get :show, id: links(:one).id, format: "json"
    assert_response :success
  end

end
