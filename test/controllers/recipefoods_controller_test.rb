require "test_helper"

class RecipefoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipefood = recipefoods(:one)
  end

  test "should get index" do
    get recipefoods_url
    assert_response :success
  end

  test "should get new" do
    get new_recipefood_url
    assert_response :success
  end

  test "should create recipefood" do
    assert_difference("Recipefood.count") do
      post recipefoods_url, params: { recipefood: {  } }
    end

    assert_redirected_to recipefood_url(Recipefood.last)
  end

  test "should show recipefood" do
    get recipefood_url(@recipefood)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipefood_url(@recipefood)
    assert_response :success
  end

  test "should update recipefood" do
    patch recipefood_url(@recipefood), params: { recipefood: {  } }
    assert_redirected_to recipefood_url(@recipefood)
  end

  test "should destroy recipefood" do
    assert_difference("Recipefood.count", -1) do
      delete recipefood_url(@recipefood)
    end

    assert_redirected_to recipefoods_url
  end
end
