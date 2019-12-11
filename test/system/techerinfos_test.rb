require "application_system_test_case"

class TecherinfosTest < ApplicationSystemTestCase
  setup do
    @techerinfo = techerinfos(:one)
  end

  test "visiting the index" do
    visit techerinfos_url
    assert_selector "h1", text: "Techerinfos"
  end

  test "creating a Techerinfo" do
    visit techerinfos_url
    click_on "New Techerinfo"

    fill_in "Address", with: @techerinfo.address
    fill_in "Name", with: @techerinfo.name
    click_on "Create Techerinfo"

    assert_text "Techerinfo was successfully created"
    click_on "Back"
  end

  test "updating a Techerinfo" do
    visit techerinfos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @techerinfo.address
    fill_in "Name", with: @techerinfo.name
    click_on "Update Techerinfo"

    assert_text "Techerinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Techerinfo" do
    visit techerinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Techerinfo was successfully destroyed"
  end
end
