class Series < ActiveRecord::Base
  has_many :articles

  mount_uploader :cover, CoverUploader

  enum level: ['beginner', 'intermediate', 'advance']

  validates :title, presence: true
  validates :excerpt, presence: true
  validates :cover, presence: true
  validates :level, presence: true

  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end

#the variables
  #title
  #level
  #excerpt
  #cover
  #finish
