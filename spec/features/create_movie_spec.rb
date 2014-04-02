require 'spec_helper'

feature "Movie" do 

  scenario "seeing a list of movies" do 
  	  
  	  matrix_movie = FactoryGirl.create(:movie, title: "Matrix")
  	  up_movie = FactoryGirl.create(:movie, title: "Up")
      visit '/movies'
      page.should have_content matrix_movie.title
      page.should have_content up_movie.title
      

  end 

end
