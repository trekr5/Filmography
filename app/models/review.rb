class Review < ActiveRecord::Base

	belongs_to :movie

  validates :username, presence: true, uniqueness: true, :case_sensitive => false
  validates :comment, presence: true
   validates :ratings, presence: true
  

end  