require 'spec_helper'

describe ReviewsController do
  it "has a new action" do 
    get :new
    response.should be_ok




  end
end