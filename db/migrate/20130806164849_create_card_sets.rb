class CreateCardSets < ActiveRecord::Migration
  def change
    create_table :card_sets do |t|
      t.string :name
      t.integer :edition_id
      t.string :symbol
      t.string :background

      t.timestamps
    end
  end
end
