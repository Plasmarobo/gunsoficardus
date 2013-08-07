class CreateBasicCards < ActiveRecord::Migration
  def change
    create_table :basic_cards do |t|
      t.integer :cardset_id
      t.integer :rarity
      t.string :background

      t.timestamps
    end
  end
end
