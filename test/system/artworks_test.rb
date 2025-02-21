require "application_system_test_case"

class ArtworksTest < ApplicationSystemTestCase
  setup do
    @artwork = artworks(:one)
  end

  test "visiting the index" do
    visit artworks_url
    assert_selector "h1", text: "Artworks"
  end

  test "should create artwork" do
    visit artworks_url
    click_on "New artwork"

    fill_in "Artist", with: @artwork.artist_id
    fill_in "Creation date", with: @artwork.creation_date
    fill_in "History", with: @artwork.history
    fill_in "Image", with: @artwork.image
    fill_in "Title", with: @artwork.title
    click_on "Create Artwork"

    assert_text "Artwork was successfully created"
    click_on "Back"
  end

  test "should update Artwork" do
    visit artwork_url(@artwork)
    click_on "Edit this artwork", match: :first

    fill_in "Artist", with: @artwork.artist_id
    fill_in "Creation date", with: @artwork.creation_date
    fill_in "History", with: @artwork.history
    fill_in "Image", with: @artwork.image
    fill_in "Title", with: @artwork.title
    click_on "Update Artwork"

    assert_text "Artwork was successfully updated"
    click_on "Back"
  end

  test "should destroy Artwork" do
    visit artwork_url(@artwork)
    click_on "Destroy this artwork", match: :first

    assert_text "Artwork was successfully destroyed"
  end
end
