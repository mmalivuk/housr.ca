require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get sell" do
    get :sell
    assert_response :success
  end

  test "should get rent" do
    get :rent
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get agent" do
    get :agent
    assert_response :success
  end

end
