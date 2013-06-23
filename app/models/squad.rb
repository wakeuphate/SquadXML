class Squad < ActiveRecord::Base
  belongs_to :user
  has_many :squad_members

  attr_accessible :email, :name, :picture, :tag, :title, :website

  validates :name, :tag, :title, :presence => true
  validates :tag, :format => { :with => /^[A-z0-9]+$/, :message => "Only letters and numbers allowed" }
end
