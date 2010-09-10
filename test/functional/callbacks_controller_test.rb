require 'test_helper'

class CallbacksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:callbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create callback" do
    assert_difference('Callback.count') do
      post :create, :callback => { }
    end

    assert_redirected_to callback_path(assigns(:callback))
  end

  test "should show callback" do
    get :show, :id => callbacks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => callbacks(:one).to_param
    assert_response :success
  end

  test "should update callback" do
    put :update, :id => callbacks(:one).to_param, :callback => { }
    assert_redirected_to callback_path(assigns(:callback))
  end

  test "should destroy callback" do
    assert_difference('Callback.count', -1) do
      delete :destroy, :id => callbacks(:one).to_param
    end

    assert_redirected_to callbacks_path
  end
end
