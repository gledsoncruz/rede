require 'test_helper'

class MergulhosControllerTest < ActionController::TestCase
  setup do
    @mergulho = mergulhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mergulhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mergulho" do
    assert_difference('Mergulho.count') do
      post :create, :mergulho => @mergulho.attributes
    end

    assert_redirected_to mergulho_path(assigns(:mergulho))
  end

  test "should show mergulho" do
    get :show, :id => @mergulho.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mergulho.to_param
    assert_response :success
  end

  test "should update mergulho" do
    put :update, :id => @mergulho.to_param, :mergulho => @mergulho.attributes
    assert_redirected_to mergulho_path(assigns(:mergulho))
  end

  test "should destroy mergulho" do
    assert_difference('Mergulho.count', -1) do
      delete :destroy, :id => @mergulho.to_param
    end

    assert_redirected_to mergulhos_path
  end
end
