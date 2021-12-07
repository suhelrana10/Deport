require 'test_helper'

class SessionnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessionns_index_url
    assert_response :success
  end

  test "should get create" do
    get sessionns_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sessionns_destroy_url
    assert_response :success
  end

  test "should get new" do
    get sessionns_new_url
    assert_response :success
  end

end
