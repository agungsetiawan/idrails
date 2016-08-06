class Series < ActiveRecord::Base
  #the variables
  #title, level, excerpt, cover, finish

  mount_uploader :cover, CoverUploader

  enum level: ['beginner', 'intermediate', 'advance']

  validates :title, presence: true
  validates :excerpt, presence: true
  validates :cover, presence: true
  validates :level, presence: true
end
