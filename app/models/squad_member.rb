class SquadMember < ActiveRecord::Base
  attr_accessible :email, :icq, :name, :nickname, :remark, :uid

  validates :uid, :name, :nickname, :presence => true
  validates :uid, :icq, :only_integer => true
end
