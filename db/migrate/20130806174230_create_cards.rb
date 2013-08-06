class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :type_id
      t.integer :cardset_id
      t.integer :edition_id
      t.string :content
      t.integer :p_type
      t.integer :e_type
      t.integer :g_type

      t.timestamps
    end
  end
end
