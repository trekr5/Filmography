require 'spec_helper'

describe Movie do

  describe "validations" do
    

    it "validates presence of title of film" do
      subject.should have(1).error_on(:title)
    end

   
    it "validates presence of ratings" do
      subject.should have(1).error_on(:ratings)
    end

    it "validates length of description" do
      description = "Hello" * 500
      subject.description = description
      subject.should have(1).error_on(:description)
    end
  end
end