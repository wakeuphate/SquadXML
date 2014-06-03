class ChangeColumnToBigint < ActiveRecord::Migration
  def up
    change_column :squad_members, :uid, :bigint
  end

  def down
    change_column :squad_members, :uid, :int, :limit => 25
  end
end
