require "test_helper"

describe Api::LinksController do
  fixtures :links, :authors

  let(:link){ links(:one) }

  let(:params) do
    {url: "http://example.com",
     description: "An example site",
     author_id: authors(:one).id}
  end

  it "should get show" do
    get :show, id: link.id, format: "json"
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
    put :update, id: link.id, link: params, format: "json"
    assert_response :success
  end

  it "should delete destroy" do
    delete :destroy, id: link.id, format: "json"
    assert_response :success
  end

end
