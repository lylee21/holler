require "test_helper"

class HollersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @holler = hollers(:one)
  end

  test "should get index" do
    get hollers_url
    assert_response :success
  end

  test "should get new" do
    get new_holler_url
    assert_response :success
  end

  test "should create holler" do
    assert_difference("Holler.count") do
      post hollers_url, params: { holler: { message: @holler.message, subtitle: @holler.subtitle, title: @holler.title } }
    end

    assert_redirected_to holler_url(Holler.last)
  end

  test "should show holler" do
    get holler_url(@holler)
    assert_response :success
  end

  test "should get edit" do
    get edit_holler_url(@holler)
    assert_response :success
  end

  test "should update holler" do
    patch holler_url(@holler), params: { holler: { message: @holler.message, subtitle: @holler.subtitle, title: @holler.title } }
    assert_redirected_to holler_url(@holler)
  end

  test "should destroy holler" do
    assert_difference("Holler.count", -1) do
      delete holler_url(@holler)
    end

    assert_redirected_to hollers_url
  end
end
