require 'test_helper'

class PickUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pick_up = pick_ups(:one)
  end

  test "should get index" do
    get pick_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_pick_up_url
    assert_response :success
  end

  test "should create pick_up" do
    assert_difference('PickUp.count') do
      post pick_ups_url, params: { pick_up: { restaurant_id: @pick_up.restaurant_id, status: @pick_up.status } }
    end

    assert_redirected_to pick_up_url(PickUp.last)
  end

  test "should show pick_up" do
    get pick_up_url(@pick_up)
    assert_response :success
  end

  test "should get edit" do
    get edit_pick_up_url(@pick_up)
    assert_response :success
  end

  test "should update pick_up" do
    patch pick_up_url(@pick_up), params: { pick_up: { restaurant_id: @pick_up.restaurant_id, status: @pick_up.status } }
    assert_redirected_to pick_up_url(@pick_up)
  end

  test "should destroy pick_up" do
    assert_difference('PickUp.count', -1) do
      delete pick_up_url(@pick_up)
    end

    assert_redirected_to pick_ups_url
  end
end
