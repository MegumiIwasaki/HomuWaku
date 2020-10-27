require 'test_helper'

class Teachers::StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_students_index_url
    assert_response :success
  end

  test "should get show" do
    get teachers_students_show_url
    assert_response :success
  end

end
