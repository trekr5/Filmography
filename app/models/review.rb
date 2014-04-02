class Review < ActiveRecord::Base

  validates :username, presence: true, uniqueness: true, :case_sensitive => false
  validates :name_of_film, presence: true
  validates :comment, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :ratings, presence: true
  

end  