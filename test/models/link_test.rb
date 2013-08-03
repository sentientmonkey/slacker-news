require 'test_helper'

describe Link do
  fixtures :links

  let(:link){ links(:one) }

  it "should unpublished on destroy" do
    link.destroy
    link.published.must_equal false
    Link.find(links(:one)).must_equal links(:one)
  end

end

