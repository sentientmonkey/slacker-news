require "test_helper"

describe Api::AuthorsController do
  fixtures :authors

  let(:author){ authors(:one) }

  let(:params) do
    {name: "Ash",
     email: "me@boomstick.com"}
  end

  it "should get index" do
    get :index, format: "json"
    assert_response :success
  end

  it "should get show" do
    get :show, id: author.id, format: "json"
    assert_response :success
  end

  it "should get create" do
    post :create, author: params, format: "json"
    assert_response :success
  end

  it "should get update" do
    put :update, id: author.id, author: params, format: "json"
    assert_response :success
  end

  it "should get destroy" do
    delete :destroy, id: author.id, format: "json"
    assert_response :success
  end

end
