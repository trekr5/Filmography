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

  describe "with invalid params" do 
     let(:invalid_params) do
       {review: {username: "Helene", name_of_film: "Capybara", description: "Gem movie", comment: "Dodgy", ratings: "Outstanding" }}
     end
      it "does not save a record" do

        expect {
         post :create, invalid_params
         }.to_not change{ Review.count }
  end
      it "renders the new form" do
          post :create, invalid_params 
           response.should render_template(:new)
    

      end  

  end


end
