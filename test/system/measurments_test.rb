require "application_system_test_case"

class MeasurmentsTest < ApplicationSystemTestCase
  setup do
    @measurment = measurments(:one)
  end

  test "visiting the index" do
    visit measurments_url
    assert_selector "h1", text: "Measurments"
  end

  test "creating a Measurment" do
    visit measurments_url
    click_on "New Measurment"

    click_on "Create Measurment"

    assert_text "Measurment was successfully created"
    click_on "Back"
  end

  test "updating a Measurment" do
    visit measurments_url
    click_on "Edit", match: :first

    click_on "Update Measurment"

    assert_text "Measurment was successfully updated"
    click_on "Back"
  end

  test "destroying a Measurment" do
    visit measurments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measurment was successfully destroyed"
  end
end
