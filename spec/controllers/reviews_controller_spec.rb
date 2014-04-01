require 'spec_helper'

describe ReviewsController do
  it "has a new action" do 
    get :new
    response.should be_ok
  end
  

  it "has a show action" do 
    @review = Review.create
    get :show, id: @review.id
    response.should be_ok
  end

  describe "POST #create" do 
      it "saves a record" do

        expect {
         post :create, review: {username: "Helene", name_of_film: "Capybara", description: "Gem movie", comment: "Dodgy", ratings: "Outstanding" }
         }.to change{ Review.count }.from(0).to(1) 
  end

  end
end
