class Book < ActiveRecord::Base
  has_many :book_notes
  has_many :book_reviews
  has_many :coursebooks
  has_many :courses, :through => :coursebooks
  has_many :pictures
end
