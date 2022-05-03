require "application_system_test_case"

class EatsTest < ApplicationSystemTestCase
  setup do
    @eat = eats(:one)
  end

  test "visiting the index" do
    visit eats_url
    assert_selector "h1", text: "Eats"
  end

  test "should create eat" do
    visit eats_url
    click_on "New eat"

    fill_in "Description", with: @eat.description
    fill_in "Food type", with: @eat.food_type
    fill_in "Lj been", with: @eat.lj_been
    fill_in "Menu", with: @eat.menu
    fill_in "Michael been", with: @eat.michael_been
    fill_in "Name", with: @eat.name
    fill_in "Number", with: @eat.number
    fill_in "Url", with: @eat.url
    click_on "Create Eat"

    assert_text "Eat was successfully created"
    click_on "Back"
  end

  test "should update Eat" do
    visit eat_url(@eat)
    click_on "Edit this eat", match: :first

    fill_in "Description", with: @eat.description
    fill_in "Food type", with: @eat.food_type
    fill_in "Lj been", with: @eat.lj_been
    fill_in "Menu", with: @eat.menu
    fill_in "Michael been", with: @eat.michael_been
    fill_in "Name", with: @eat.name
    fill_in "Number", with: @eat.number
    fill_in "Url", with: @eat.url
    click_on "Update Eat"

    assert_text "Eat was successfully updated"
    click_on "Back"
  end

  test "should destroy Eat" do
    visit eat_url(@eat)
    click_on "Destroy this eat", match: :first

    assert_text "Eat was successfully destroyed"
  end
end
