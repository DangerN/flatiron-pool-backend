require 'test_helper'

class YeetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yeet = yeets(:one)
  end

  test "should get index" do
    get yeets_url, as: :json
    assert_response :success
  end

  test "should create yeet" do
    assert_difference('Yeet.count') do
      post yeets_url, params: { yeet: { potato: @yeet.potato } }, as: :json
    end

    assert_response 201
  end

  test "should show yeet" do
    get yeet_url(@yeet), as: :json
    assert_response :success
  end

  test "should update yeet" do
    patch yeet_url(@yeet), params: { yeet: { potato: @yeet.potato } }, as: :json
    assert_response 200
  end

  test "should destroy yeet" do
    assert_difference('Yeet.count', -1) do
      delete yeet_url(@yeet), as: :json
    end

    assert_response 204
  end
end
