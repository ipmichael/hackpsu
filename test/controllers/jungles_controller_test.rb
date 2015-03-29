require 'test_helper'

class JunglesControllerTest < ActionController::TestCase
  setup do
    @jungle = jungles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jungles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jungle" do
    assert_difference('Jungle.count') do
      post :create, jungle: { eats: @jungle.eats, monkey: @jungle.monkey }
    end

    assert_redirected_to jungle_path(assigns(:jungle))
  end

  test "should show jungle" do
    get :show, id: @jungle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jungle
    assert_response :success
  end

  test "should update jungle" do
    patch :update, id: @jungle, jungle: { eats: @jungle.eats, monkey: @jungle.monkey }
    assert_redirected_to jungle_path(assigns(:jungle))
  end

  test "should destroy jungle" do
    assert_difference('Jungle.count', -1) do
      delete :destroy, id: @jungle
    end

    assert_redirected_to jungles_path
  end
end
