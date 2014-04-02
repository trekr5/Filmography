require 'spec_helper'

feature "Movie" do 

  scenario "seeing a list of movies" do 
  	  
  	  brave_film = FactoryGirl.create(:movie, name: "Brave")
  	  up_film = FactoryGirl.create(:movie, name: "UP")
      visit '/movies'
      page.should have_content brave_review.name
      page.should have_content up_review.name
      

  end 

end
