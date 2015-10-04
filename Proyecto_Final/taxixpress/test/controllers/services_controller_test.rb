require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { date_time: @service.date_time, experience: @service.experience, from_address_id: @service.from_address_id, passengers: @service.passengers, payment: @service.payment, payment_method_id: @service.payment_method_id, profile_id: @service.profile_id, rate: @service.rate, service_code: @service.service_code, status: @service.status, to_address_id: @service.to_address_id, vehicle_id: @service.vehicle_id, vehicle_type_id: @service.vehicle_type_id }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { date_time: @service.date_time, experience: @service.experience, from_address_id: @service.from_address_id, passengers: @service.passengers, payment: @service.payment, payment_method_id: @service.payment_method_id, profile_id: @service.profile_id, rate: @service.rate, service_code: @service.service_code, status: @service.status, to_address_id: @service.to_address_id, vehicle_id: @service.vehicle_id, vehicle_type_id: @service.vehicle_type_id }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
