class News < ActiveRecord::Base
  has_many :reviews
end
