class Supporter < ActiveRecord::Base
  validates :email, presence: true
  validates :email, format: {with: /.*@(gmail.com|yahoo.com|yahoo.co.id)/}
end
