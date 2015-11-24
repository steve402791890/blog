class Article < ActiveRecord::Base
  validates :title, presence :ture
  
end
