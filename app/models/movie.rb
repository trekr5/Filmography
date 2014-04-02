
class Movie < ActiveRecord::Base

  has_many :reviews

  validates :title, presence: true
  validates :description, length: { maximum: 500}
  validates :ratings, presence: true

end   