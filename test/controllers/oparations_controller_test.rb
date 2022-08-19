require "test_helper"

class OparationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get oparations_new_url
    assert_response :success
  end
end
