class Author < ActiveRecord::Base
  has_many :links
  has_many :comments
end
