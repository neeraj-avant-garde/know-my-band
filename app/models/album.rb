class Album < ActiveRecord::Base
  has_many :images
  belongs_to :user
  belongs_to :event
end
