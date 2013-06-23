class CreateSquadMembers < ActiveRecord::Migration
  def change
    create_table :squad_members do |t|
      t.integer :uid
      t.string :nickname
      t.string :name
      t.string :email
      t.integer :icq
      t.string :remark

      t.timestamps
    end
  end
end
