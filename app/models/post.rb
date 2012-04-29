class Post < ActiveRecord::Base
  attr_accessible :title

  has_and_belongs_to_many :tags
end
