class AddDescToCardSets < ActiveRecord::Migration
  def up
  	add_column :card_sets, :desc, :string
  end
  def down
  	remove_column :card_sets, :desc
  end
end
