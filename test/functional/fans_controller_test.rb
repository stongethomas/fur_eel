require 'test_helper'

class FansControllerTest < ActionController::TestCase
  setup do
    @fan = fans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan" do
    assert_difference('Fan.count') do
      post :create, fan: { city: @fan.city, country: @fan.country, email: @fan.email, ref: @fan.ref, state: @fan.state }
    end

    assert_redirected_to fan_path(assigns(:fan))
  end

  test "should show fan" do
    get :show, id: @fan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fan
    assert_response :success
  end

  test "should update fan" do
    put :update, id: @fan, fan: { city: @fan.city, country: @fan.country, email: @fan.email, ref: @fan.ref, state: @fan.state }
    assert_redirected_to fan_path(assigns(:fan))
  end

  test "should destroy fan" do
    assert_difference('Fan.count', -1) do
      delete :destroy, id: @fan
    end

    assert_redirected_to fans_path
  end
end
