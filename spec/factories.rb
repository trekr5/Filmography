FactoryGirl.define do

  factory :review do
    username "helene"
    name_of_film "Capybara"
    comment "Dodgy"
    description "Gem movie"
    ratings "Good"

  end

  factory :movie do
  	title "Rspec the movie"
  	description "Movie about Rspec"
  	ratings "5"
  end	
end





