require 'test_helper'

class PostHomeworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_homeworks_index_url
    assert_response :success
  end

  test "should get show" do
    get post_homeworks_show_url
    assert_response :success
  end

end
