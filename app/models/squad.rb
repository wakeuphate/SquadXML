class Squad < ActiveRecord::Base
  attr_accessible :email, :name, :picture, :tag, :title, :website

  validates :name, :tag, :title, :presence => true
end
