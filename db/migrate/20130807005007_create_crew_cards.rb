class CreateCrewCards < ActiveRecord::Migration
  def change
    create_table :crew_cards do |t|
      t.string :name
      t.integer :pilot
      t.integer :engineer
      t.integer :gunner
      t.integer :basiccard_id
      t.string :image
      t.string :icon_a
      t.string :icon_b
      t.string :icon_c

      t.timestamps
    end
  end
end
