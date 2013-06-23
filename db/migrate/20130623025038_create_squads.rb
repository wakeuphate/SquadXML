class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.string :tag
      t.string :email
      t.string :website
      t.string :picture
      t.string :title

      t.timestamps
    end
  end
end
