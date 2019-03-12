require 'test_helper'

class CalcsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get calcs_show_url
    assert_response :success
  end

end
