class SquadMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :squad

  attr_accessible :email, :icq, :name, :nickname, :remark, :uid

  validates :uid, :name, :nickname, :presence => true
  validates_numericality_of :uid
end
