require 'test_helper'

class MeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get me_show_url
    assert_response :success
  end

  test "should get new" do
    get me_new_url
    assert_response :success
  end

  test "should get create" do
    get me_create_url
    assert_response :success
  end

  test "should get edit" do
    get me_edit_url
    assert_response :success
  end

  test "should get update" do
    get me_update_url
    assert_response :success
  end

  test "should get destroy" do
    get me_destroy_url
    assert_response :success
  end

end
