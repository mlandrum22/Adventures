require "test_helper"

class EatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eat = eats(:one)
  end

  test "should get index" do
    get eats_url
    assert_response :success
  end

  test "should get new" do
    get new_eat_url
    assert_response :success
  end

  test "should create eat" do
    assert_difference("Eat.count") do
      post eats_url, params: { eat: { description: @eat.description, food_type: @eat.food_type, lj_been: @eat.lj_been, menu: @eat.menu, michael_been: @eat.michael_been, name: @eat.name, number: @eat.number, url: @eat.url } }
    end

    assert_redirected_to eat_url(Eat.last)
  end

  test "should show eat" do
    get eat_url(@eat)
    assert_response :success
  end

  test "should get edit" do
    get edit_eat_url(@eat)
    assert_response :success
  end

  test "should update eat" do
    patch eat_url(@eat), params: { eat: { description: @eat.description, food_type: @eat.food_type, lj_been: @eat.lj_been, menu: @eat.menu, michael_been: @eat.michael_been, name: @eat.name, number: @eat.number, url: @eat.url } }
    assert_redirected_to eat_url(@eat)
  end

  test "should destroy eat" do
    assert_difference("Eat.count", -1) do
      delete eat_url(@eat)
    end

    assert_redirected_to eats_url
  end
end
