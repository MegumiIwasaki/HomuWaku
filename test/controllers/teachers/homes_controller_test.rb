require 'test_helper'

class Teachers::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get teachers_homes_home_url
    assert_response :success
  end

end
