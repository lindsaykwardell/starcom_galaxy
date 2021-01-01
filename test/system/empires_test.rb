require "application_system_test_case"

class EmpiresTest < ApplicationSystemTestCase
  setup do
    @empire = empires(:one)
  end

  test "visiting the index" do
    visit empires_url
    assert_selector "h1", text: "Empires"
  end

  test "creating a Empire" do
    visit empires_url
    click_on "New Empire"

    fill_in "Credits", with: @empire.credits
    fill_in "Description", with: @empire.description
    fill_in "Empire name", with: @empire.empire_name
    fill_in "Industry", with: @empire.industry
    fill_in "Research", with: @empire.research
    fill_in "User", with: @empire.user_id
    click_on "Create Empire"

    assert_text "Empire was successfully created"
    click_on "Back"
  end

  test "updating a Empire" do
    visit empires_url
    click_on "Edit", match: :first

    fill_in "Credits", with: @empire.credits
    fill_in "Description", with: @empire.description
    fill_in "Empire name", with: @empire.empire_name
    fill_in "Industry", with: @empire.industry
    fill_in "Research", with: @empire.research
    fill_in "User", with: @empire.user_id
    click_on "Update Empire"

    assert_text "Empire was successfully updated"
    click_on "Back"
  end

  test "destroying a Empire" do
    visit empires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empire was successfully destroyed"
  end
end
