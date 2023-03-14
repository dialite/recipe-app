require "application_system_test_case"

class RecipefoodsTest < ApplicationSystemTestCase
  setup do
    @recipefood = recipefoods(:one)
  end

  test "visiting the index" do
    visit recipefoods_url
    assert_selector "h1", text: "Recipefoods"
  end

  test "should create recipefood" do
    visit recipefoods_url
    click_on "New recipefood"

    click_on "Create Recipefood"

    assert_text "Recipefood was successfully created"
    click_on "Back"
  end

  test "should update Recipefood" do
    visit recipefood_url(@recipefood)
    click_on "Edit this recipefood", match: :first

    click_on "Update Recipefood"

    assert_text "Recipefood was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipefood" do
    visit recipefood_url(@recipefood)
    click_on "Destroy this recipefood", match: :first

    assert_text "Recipefood was successfully destroyed"
  end
end
