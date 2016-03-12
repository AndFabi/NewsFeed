class Review < ActiveRecord::Base
  belongs_to :news


  validates :content, presence: true
end
