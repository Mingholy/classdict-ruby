class Course < ActiveRecord::Base
  has_many :coursebooks
  has_many :books,:through => :coursebooks
  has_many :usercourses
  has_many :users, :through => :usercourses
  has_many :pictures
end
