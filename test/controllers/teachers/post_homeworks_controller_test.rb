require 'test_helper'

class Teachers::PostHomeworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_post_homeworks_index_url
    assert_response :success
  end

  test "should get new" do
    get teachers_post_homeworks_new_url
    assert_response :success
  end

  test "should get show" do
    get teachers_post_homeworks_show_url
    assert_response :success
  end

end
