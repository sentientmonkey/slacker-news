require "test_helper"

describe Api::LinksController do
  fixtures :links, :authors

  let(:params) do
    {url: "http://example.com",
     description: "An example site",
     author_id: authors(:one).id}
  end

  it "should get show" do
    get :show, id: links(:one).id, format: "json"
    assert_response :success
  end

  it "should get index" do
    get :index, format: "json"
    assert_response :success
  end

  it "should post create" do
    post :create, link: params, format: "json"
    assert_response :success
  end

  it "should put update" do
    put :update, id: links(:one).id, link: params, format: "json"
    assert_response :success
  end

  it "should delete destroy" do
    delete :destroy, id: links(:one).id, format: "json"
    assert_response :success
  end

end
