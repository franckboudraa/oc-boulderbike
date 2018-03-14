require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "should get riders list" do
    get riders_url
    assert_response :success
  end
end
