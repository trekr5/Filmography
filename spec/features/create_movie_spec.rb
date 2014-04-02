require 'spec_helper'

feature "Movie" do 

  scenario "seeing a list of movies" do 
  	  
  	  brave_film = FactoryGirl.create(:movie, title: "Brave")
  	  up_film = FactoryGirl.create(:movie, title: "UP")
      visit '/movies'
      page.should have_content brave_review.name_of_film
      page.should have_content up_review.name_of_film
      

  end 

end
