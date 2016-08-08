class Article < ActiveRecord::Base
  belongs_to :series

  mount_uploader :cover, CoverUploader

  validates :title, presence: true
  validates :content, presence: true
  validates :cover, presence: true
end

#the variables
  #title
  #published
  #content
  #cover