require 'test_helper'

class ServiceWebsitesControllerTest < ActionController::TestCase
  setup do
    @service_website = service_websites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_websites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_website" do
    assert_difference('ServiceWebsite.count') do
      post :create, service_website: { redirect_url: @service_website.redirect_url }
    end

    assert_redirected_to service_website_path(assigns(:service_website))
  end

  test "should show service_website" do
    get :show, id: @service_website
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_website
    assert_response :success
  end

  test "should update service_website" do
    patch :update, id: @service_website, service_website: { redirect_url: @service_website.redirect_url }
    assert_redirected_to service_website_path(assigns(:service_website))
  end

  test "should destroy service_website" do
    assert_difference('ServiceWebsite.count', -1) do
      delete :destroy, id: @service_website
    end

    assert_redirected_to service_websites_path
  end
end
