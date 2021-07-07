require 'test_helper'

class StartsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get starts_top_url
    assert_response :success
  end

end
