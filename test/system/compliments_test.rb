require "application_system_test_case"

class ComplimentsTest < ApplicationSystemTestCase
  setup do
    @compliment = compliments(:one)
  end

  test "visiting the index" do
    visit compliments_url
    assert_selector "h1", text: "Compliments"
  end

  test "creating a Compliment" do
    visit compliments_url
    click_on "New Compliment"

    click_on "Create Compliment"

    assert_text "Compliment was successfully created"
    click_on "Back"
  end

  test "updating a Compliment" do
    visit compliments_url
    click_on "Edit", match: :first

    click_on "Update Compliment"

    assert_text "Compliment was successfully updated"
    click_on "Back"
  end

  test "destroying a Compliment" do
    visit compliments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compliment was successfully destroyed"
  end
end
