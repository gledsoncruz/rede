require 'test_helper'

class MergulhadoresControllerTest < ActionController::TestCase
  setup do
    @mergulhador = mergulhadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mergulhadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mergulhador" do
    assert_difference('Mergulhador.count') do
      post :create, :mergulhador => @mergulhador.attributes
    end

    assert_redirected_to mergulhador_path(assigns(:mergulhador))
  end

  test "should show mergulhador" do
    get :show, :id => @mergulhador.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mergulhador.to_param
    assert_response :success
  end

  test "should update mergulhador" do
    put :update, :id => @mergulhador.to_param, :mergulhador => @mergulhador.attributes
    assert_redirected_to mergulhador_path(assigns(:mergulhador))
  end

  test "should destroy mergulhador" do
    assert_difference('Mergulhador.count', -1) do
      delete :destroy, :id => @mergulhador.to_param
    end

    assert_redirected_to mergulhadores_path
  end
end
