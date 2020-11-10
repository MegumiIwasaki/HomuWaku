require 'test_helper'

class Teachers::SubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_submissions_index_url
    assert_response :success
  end

  test "should get edit" do
    get teachers_submissions_edit_url
    assert_response :success
  end

  test "should get show" do
    get teachers_submissions_show_url
    assert_response :success
  end

end
