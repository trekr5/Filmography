require 'spec_helper'

feature "Film Review site" do 
  scenario "creating a new review" do
    visit '/reviews/new'
    fill_in :review_username, with: "Helene"
    fill_in :review_name_of_film, with: "Capybara"
    fill_in :review_description, with: "Gem movie"
    fill_in :review_comment, with: "Dodgy"
    select "Outstanding", from: :review_ratings
    click_button "Create"

    visit '/reviews'
    page.should have_content "Capybara"

  end
end