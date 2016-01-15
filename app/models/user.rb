class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  #validates :password, length: {minimum: 5}
  has_secure_password
  has_many :usercourses
  has_many :courses, :through => :usercourses
  has_many :userbooks
  has_many :books, :through => :userbooks
  has_many :userinfos
  has_many :book_reviews
end
