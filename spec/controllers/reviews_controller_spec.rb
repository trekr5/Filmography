require 'spec_helper'

describe ReviewsController do
  it "has a new action" do 
    get :new
    response.should be_ok
  end


  describe "POST #create" do 
      it "saves a record" do

        expect {
         post :create
         }.to change{ Review.count }.from(0).to(1) 
  end
  end
end
