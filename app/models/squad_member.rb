class SquadMember < ActiveRecord::Base
  attr_accessible :email, :icq, :name, :nickname, :remark, :uid
end
