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

  def self.available
    joins('RIGHT JOIN articles on series.id=articles.series_id WHERE articles.published=true').distinct
  end

  def published_articles
    articles.published
  end
end

#the variables
  #title
  #level
  #excerpt
  #cover
  #finish
