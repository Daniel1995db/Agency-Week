require 'test_helper'

class FavoriteRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_restaurant = favorite_restaurants(:one)
  end

  test "should get index" do
    get favorite_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_restaurant_url
    assert_response :success
  end

  test "should create favorite_restaurant" do
    assert_difference('FavoriteRestaurant.count') do
      post favorite_restaurants_url, params: { favorite_restaurant: { restaurant_id: @favorite_restaurant.restaurant_id, user_id: @favorite_restaurant.user_id } }
    end

    assert_redirected_to favorite_restaurant_url(FavoriteRestaurant.last)
  end

  test "should show favorite_restaurant" do
    get favorite_restaurant_url(@favorite_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_restaurant_url(@favorite_restaurant)
    assert_response :success
  end

  test "should update favorite_restaurant" do
    patch favorite_restaurant_url(@favorite_restaurant), params: { favorite_restaurant: { restaurant_id: @favorite_restaurant.restaurant_id, user_id: @favorite_restaurant.user_id } }
    assert_redirected_to favorite_restaurant_url(@favorite_restaurant)
  end

  test "should destroy favorite_restaurant" do
    assert_difference('FavoriteRestaurant.count', -1) do
      delete favorite_restaurant_url(@favorite_restaurant)
    end

    assert_redirected_to favorite_restaurants_url
  end
end
