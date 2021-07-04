require 'test_helper'

class ComplimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compliment = compliments(:one)
  end

  test "should get index" do
    get compliments_url
    assert_response :success
  end

  test "should get new" do
    get new_compliment_url
    assert_response :success
  end

  test "should create compliment" do
    assert_difference('Compliment.count') do
      post compliments_url, params: { compliment: { content: @compliment.content } }
    end

    assert_redirected_to compliment_url(Compliment.last)
  end

  test "should show compliment" do
    get compliment_url(@compliment)
    assert_response :success
  end

  test "should get edit" do
    get edit_compliment_url(@compliment)
    assert_response :success
  end

  test "should update compliment" do
    patch compliment_url(@compliment), params: { compliment: { content: @compliment.content } }
    assert_redirected_to compliment_url(@compliment)
  end

  test "should destroy compliment" do
    assert_difference('Compliment.count', -1) do
      delete compliment_url(@compliment)
    end

    assert_redirected_to compliments_url
  end
end
