require 'test_helper'

class StubsControllerTest < ActionController::TestCase
  setup do
    @stub = stubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stub" do
    assert_difference('Stub.count') do
      post :create, stub: @stub.attributes
    end

    assert_redirected_to stub_path(assigns(:stub))
  end

  test "should show stub" do
    get :show, id: @stub.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stub.to_param
    assert_response :success
  end

  test "should update stub" do
    put :update, id: @stub.to_param, stub: @stub.attributes
    assert_redirected_to stub_path(assigns(:stub))
  end

  test "should destroy stub" do
    assert_difference('Stub.count', -1) do
      delete :destroy, id: @stub.to_param
    end

    assert_redirected_to stubs_path
  end
end
