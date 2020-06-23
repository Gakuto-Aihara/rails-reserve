require "application_system_test_case"

class InfomationsTest < ApplicationSystemTestCase
  setup do
    @infomation = infomations(:one)
  end

  test "visiting the index" do
    visit infomations_url
    assert_selector "h1", text: "Infomations"
  end

  test "creating a Infomation" do
    visit infomations_url
    click_on "New Infomation"

    fill_in "About", with: @infomation.about
    fill_in "End", with: @infomation.end
    fill_in "Info", with: @infomation.info
    fill_in "Start", with: @infomation.start
    click_on "Create Infomation"

    assert_text "Infomation was successfully created"
    click_on "Back"
  end

  test "updating a Infomation" do
    visit infomations_url
    click_on "Edit", match: :first

    fill_in "About", with: @infomation.about
    fill_in "End", with: @infomation.end
    fill_in "Info", with: @infomation.info
    fill_in "Start", with: @infomation.start
    click_on "Update Infomation"

    assert_text "Infomation was successfully updated"
    click_on "Back"
  end

  test "destroying a Infomation" do
    visit infomations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Infomation was successfully destroyed"
  end
end
