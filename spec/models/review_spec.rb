require 'spec_helper'

describe Review do

  describe "validations" do
    it "validates presence of name" do
      subject.should have(1).error_on(:username)
    end

    it "validates presence of name of film" do
      subject.should have(1).error_on(:name_of_film)
    end

    it "validates presence of comment" do
      subject.should have(1).error_on(:comment)
    end

    it "validates presence of ratings" do
      subject.should have(1).error_on(:ratings)
    end

    it "validates length of description" do
      description = "Hi" * 500
      subject.description = description
      subject.should have(1).error_on(:description)
    end
  end
end