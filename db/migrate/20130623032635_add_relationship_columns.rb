class AddRelationshipColumns < ActiveRecord::Migration
  def up
    add_column :squad_members, :squad_id, :integer
    add_column :squad_members, :user_id, :integer
    add_column :squads, :user_id, :integer
  end

  def down
    remove_column :squad_members, :squad_id
    remove_column :squad_members, :user_id
    remove_column :squads, :user_id
  end
end
