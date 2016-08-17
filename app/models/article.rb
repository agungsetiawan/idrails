class Article < ActiveRecord::Base
  belongs_to :series

  mount_uploader :cover, CoverUploader

  validates :title, presence: true
  validates :content, presence: true
  validates :cover, presence: true

  def to_param
    # format(
    #   '%s-jual-%s%s',
    #   self.id.to_s(36),
    #   category_name,
    #   self.name.parameterize
    # )
    "#{self.id}-#{self.title.parameterize}"
  end

  def self.published(id=nil)
    if id
      where(published: true, id: id).order(created_at: :desc).first
    else
      where(published: true).order(created_at: :desc)
    end
  end
end

#the variables
  #title
  #published
  #content
  #cover