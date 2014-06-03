class ModifySquadMembersUidForArma3 < ActiveRecord::Migration
  def up
    change_column :squad_members, :uid, :int, :limit => 25
  end
``
  def down
    change_column :squad_members, :uid, :int
  end
end
