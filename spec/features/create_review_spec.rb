require 'spec_helper'

feature "Film Review site" do 
  scenario "creating a new review" do
    visit '/reviews/new'
    fill_in :username, with: "Helene"
    fill_in :name_of_film, with: "Capybara"
    fill_in :description, with: "Gem movie"
    fill_in :comment, with: "Dodgy"
    select "5", from: :ratings
    click_button "Create"

    visit '/reviews'
    page.should have_content "Capybara"

  end
end