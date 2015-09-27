require 'test_helper'

class DistritsControllerTest < ActionController::TestCase
  setup do
    @distrit = distrits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distrits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distrit" do
    assert_difference('Distrit.count') do
      post :create, distrit: { name: @distrit.name }
    end

    assert_redirected_to distrit_path(assigns(:distrit))
  end

  test "should show distrit" do
    get :show, id: @distrit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distrit
    assert_response :success
  end

  test "should update distrit" do
    patch :update, id: @distrit, distrit: { name: @distrit.name }
    assert_redirected_to distrit_path(assigns(:distrit))
  end

  test "should destroy distrit" do
    assert_difference('Distrit.count', -1) do
      delete :destroy, id: @distrit
    end

    assert_redirected_to distrits_path
  end
end
