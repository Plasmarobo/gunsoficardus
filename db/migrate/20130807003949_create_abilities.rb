class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :crewcard_id
      t.string :textA
      t.string :textB

      t.timestamps
    end
  end
end
