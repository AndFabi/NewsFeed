class News < ActiveRecord::Base
  has_many :reviews, depedent: :destroy
end
