require "test_helper"

class EmpiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empire = empires(:one)
  end

  test "should get index" do
    get empires_url
    assert_response :success
  end

  test "should get new" do
    get new_empire_url
    assert_response :success
  end

  test "should create empire" do
    assert_difference('Empire.count') do
      post empires_url, params: { empire: { credits: @empire.credits, description: @empire.description, empire_name: @empire.empire_name, industry: @empire.industry, research: @empire.research, user_id: @empire.user_id } }
    end

    assert_redirected_to empire_url(Empire.last)
  end

  test "should show empire" do
    get empire_url(@empire)
    assert_response :success
  end

  test "should get edit" do
    get edit_empire_url(@empire)
    assert_response :success
  end

  test "should update empire" do
    patch empire_url(@empire), params: { empire: { credits: @empire.credits, description: @empire.description, empire_name: @empire.empire_name, industry: @empire.industry, research: @empire.research, user_id: @empire.user_id } }
    assert_redirected_to empire_url(@empire)
  end

  test "should destroy empire" do
    assert_difference('Empire.count', -1) do
      delete empire_url(@empire)
    end

    assert_redirected_to empires_url
  end
end
