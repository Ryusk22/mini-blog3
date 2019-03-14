require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get blogs_show_url
    assert_response :success
  end

  test "should get edit" do
    get blogs_edit_url
    assert_response :success
  end

  test "should get delete" do
    get blogs_delete_url
    assert_response :success
  end

end
