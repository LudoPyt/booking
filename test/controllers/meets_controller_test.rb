require 'test_helper'

class MeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meets_index_url
    assert_response :success
  end

  test "should get show" do
    get meets_show_url
    assert_response :success
  end

  test "should get new" do
    get meets_new_url
    assert_response :success
  end

end
