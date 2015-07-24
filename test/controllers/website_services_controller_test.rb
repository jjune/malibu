require 'test_helper'

class WebsiteServicesControllerTest < ActionController::TestCase
  setup do
    @website_service = website_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:website_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create website_service" do
    assert_difference('WebsiteService.count') do
      post :create, website_service: { place_id: @website_service.place_id, redirect_url: @website_service.redirect_url }
    end

    assert_redirected_to website_service_path(assigns(:website_service))
  end

  test "should show website_service" do
    get :show, id: @website_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @website_service
    assert_response :success
  end

  test "should update website_service" do
    patch :update, id: @website_service, website_service: { place_id: @website_service.place_id, redirect_url: @website_service.redirect_url }
    assert_redirected_to website_service_path(assigns(:website_service))
  end

  test "should destroy website_service" do
    assert_difference('WebsiteService.count', -1) do
      delete :destroy, id: @website_service
    end

    assert_redirected_to website_services_path
  end
end
