require 'spec_helper'

describe MoviesController do
  it "has a new action" do 
    get :new
    response.should be_ok
  end
  

  it "has a show action" do 
    @movie = FactoryGirl.create(:movie)
    get :show, id: @movie.id
    response.should be_ok
  end

  describe "POST #create" do 
      it "saves a record" do

        expect {
         post :create, movie: {title: "The Matrix", description: "sci fi", ratings: 5 }
         }.to change{ Movie.count }.from(0).to(1) 
      end

    describe "with invalid params" do 
       let(:invalid_params) do
         {movie: {title: "Dodgyxxxxxxxxx"}}
       end

        it "does not save a record" do

          expect {
           post :create, invalid_params
           }.to_not change{ Movie.count }
        end

    it "renders the new form" do
        post :create, invalid_params 
         response.should render_template(:new)
  

    end  

    end
  end


end
