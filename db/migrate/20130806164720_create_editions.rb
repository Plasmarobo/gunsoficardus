class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :name
      t.string :card
      t.string :symbol

      t.timestamps
    end
  end
end
