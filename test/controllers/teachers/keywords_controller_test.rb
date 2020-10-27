require 'test_helper'

class Teachers::KeywordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_keywords_index_url
    assert_response :success
  end

  test "should get show" do
    get teachers_keywords_show_url
    assert_response :success
  end

end
