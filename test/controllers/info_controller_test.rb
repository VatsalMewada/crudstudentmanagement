require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_index_url
    assert_response :success
  end

  test "should get new" do
    get info_new_url
    assert_response :success
  end

  test "should get show" do
    get info_show_url
    assert_response :success
  end

  test "should get edit" do
    get info_edit_url
    assert_response :success
  end

end
