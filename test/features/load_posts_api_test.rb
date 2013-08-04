require "test_helper"

feature "Load Posts API" do

  def json_fixture(name)
    file = File.open('test/fixtures/json/' + name + '.json')
    content = file.read
    file.close
    json_parsed content
  end

  def json_parsed(content)
    JSON.parse content
  end

  scenario "Using default path" do
    visit '/posts.json'
    json_parsed(page.body).must_equal json_fixture("posts")
  end

  scenario "Using api path" do
    visit '/api/posts'
    json_parsed(page.body).must_equal json_fixture("api_posts")
  end

end
