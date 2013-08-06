class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.string :image
      t.string :ability_a
      t.string :ability_b
      t.string :flavor
      t.integer :edition_id
      t.integer :set_id
      t.integer :type_id

      t.timestamps
    end
  end
end
